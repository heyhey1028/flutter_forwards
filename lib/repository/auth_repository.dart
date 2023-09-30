import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepository {
  static final _instance = Supabase.instance.client.auth;

  static get user => _instance.currentUser;

  static Future<bool> login({
    required String email,
    required String password,
  }) async {
    await _instance.signInWithPassword(email: email, password: password);
    return true;
  }

  static Future<bool> signUp({
    required String email,
    required String password,
    String name = 'Aさん',
    String role = 'user',
  }) async {
    await _instance.signUp(
      email: email,
      password: password,
      data: {
        'name': name,
        'role': role,
      },
    );
    return true;
  }

  static Future<bool> signOut() async {
    await _instance.signOut();
    return true;
  }
}
