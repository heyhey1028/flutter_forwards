import 'dart:convert';

import 'package:flutter_forwards/models/app_user.dart';
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
      print(e);
    }
    return null;
  }

  static Future<List<ServiceStatus>> getServiceStatus({required String userId}) async {
    final uri = Uri.parse('https://auyssnblalacnftodhmf.supabase.co/functions/v1/sum-service-screen-times?user_id=$userId');
    final requestHeader = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF1eXNzbmJsYWxhY25mdG9kaG1mIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU1MzczMzcsImV4cCI6MjAxMTExMzMzN30.K6IoFgvC3HJV0NcaUUoY-SuLIX1Hm1R0EEhvR2C2l50',
    };
    try {
      final response = await http.get(uri, headers: requestHeader);
      final Map<String, dynamic> data = jsonDecode(response.body);
      final List<dynamic> list = data['data'];
      return list.map((e) => ServiceStatus.fromJson(e)).toList();
    } catch (e) {
      print('error: ${e.toString()}');
      return [];
    }
  }
}
