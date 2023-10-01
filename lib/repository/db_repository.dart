import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_forwards/models/app_user.dart';
import 'package:flutter_forwards/models/total_sum.dart';
import 'package:flutter_forwards/models/user_sum.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:http/http.dart' as http;

import '../models/service_status.dart';

class DBrepository {
  static final _instance = Supabase.instance.client;

  static Future<AppUser?> getUser(String? id) async {
    if (id == null) return null;
    try {
      final response = await _instance.from('users').select().eq('id', id);
      return AppUser.fromJson(response.first as Map<String, dynamic>);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }

  static Future<List<ServiceStatus>> getServiceStatus({required String userId}) async {
    final String anonKey = dotenv.env['SUPABASE_ANON'] ?? '';
    final uri = Uri.parse('https://auyssnblalacnftodhmf.supabase.co/functions/v1/sum-service-screen-times?user_id=$userId');
    final requestHeader = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $anonKey',
    };
    try {
      final response = await http.get(uri, headers: requestHeader);
      final Map<String, dynamic> data = jsonDecode(response.body);
      final List<dynamic> list = data['data'];
      return list.map((e) => ServiceStatus.fromJson(e)).toList();
    } catch (e) {
      if (kDebugMode) {
        print('error: ${e.toString()}');
      }
      return [];
    }
  }

  static Future<List<UserSum>> getUserSums() async {
    final String anonKey = dotenv.env['SUPABASE_ANON'] ?? '';
    final uri = Uri.parse('https://auyssnblalacnftodhmf.supabase.co//functions/v1/sum-screen-times');
    final requestHeader = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $anonKey',
    };
    try {
      final response = await http.get(uri, headers: requestHeader);
      final Map<String, dynamic> data = jsonDecode(response.body);
      final List<dynamic> list = data['data'];
      final sums = list.map((e) => UserSum.fromJson(e)).toList();
      sums.sort((a, b) => a.sum.compareTo(b.sum));
      return sums;
    } catch (e) {
      if (kDebugMode) {
        print('error: ${e.toString()}');
      }
      return [];
    }
  }

  static Future<TotalSum?> getTotalSums() async {
    final String anonKey = dotenv.env['SUPABASE_ANON'] ?? '';
    final uri = Uri.parse('https://auyssnblalacnftodhmf.supabase.co//functions/v1/total-screen-times');
    final requestHeader = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $anonKey',
    };
    try {
      final response = await http.get(uri, headers: requestHeader);
      final Map<String, dynamic> data = jsonDecode(response.body);
      final List<dynamic> list = data['data'];
      return TotalSum.fromJson(list.first);
    } catch (e) {
      return null;
    }
  }
}
