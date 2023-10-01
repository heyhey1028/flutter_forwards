import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_forwards/pages/signup/ui.dart';
import 'package:flutter_forwards/util/app_http_overrides.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  final String anonKey = dotenv.env['SUPABASE_ANON'] ?? ''; // Anon keyを.envから取得
  final String projectUrl = dotenv.env['SUPABASE_URL'] ?? ''; // URLを.envから取得
  HttpOverrides.global = AppHttpOverrides();
  await Supabase.initialize(
    anonKey: anonKey, // プロジェクトAnon key
    url: projectUrl, // プロジェクトURL
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = kIsWeb
        ? Theme.of(context).textTheme
        : GoogleFonts.notoSansJpTextTheme(
            Theme.of(context).textTheme,
          );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF32C864)),
        useMaterial3: true,
        textTheme: textTheme,
      ),
      home: const SignupPage(),
    );
  }
}
