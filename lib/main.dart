import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'pages/admin/ui.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  final String anonKey = dotenv.env['SUPABASE_ANON'] ?? ''; // Anon keyを.envから取得
  final String projectUrl = dotenv.env['SUPABASE_URL'] ?? ''; // URLを.envから取得

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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(
        color: Colors.white,
        child: AdminPage(),
      ),
    );
  }
}
