import 'package:flutter/material.dart';
import 'package:flutter_forwards/register_account/state.dart';
import 'package:flutter_forwards/widgets/app_button.dart';
import 'package:flutter_forwards/widgets/app_text_form_field.dart';

class RegisterAccountPage extends StatefulWidget {
  const RegisterAccountPage({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterAccountPageState();
}

class _RegisterAccountPageState extends State<RegisterAccountPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Service? _selectedService;
  final bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  '連携するサービスを選択してください',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      DropdownMenu<Service>(
                        initialSelection: null,
                        label: const Text('連携するサービス'),
                        dropdownMenuEntries: [
                          ...[
                            const Service(id: 1, name: 'abceed'),
                            const Service(id: 2, name: 'Native Camp'),
                          ].map((Service e) => DropdownMenuEntry(value: e, label: e.name)).toList()
                        ],
                        onSelected: (Service? value) {
                          _selectedService = value;
                        },
                      ),
                      const SizedBox(height: 24),
                      AppTextFormField(
                        controller: _emailController,
                        labelText: 'Email address',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email address is required';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      AppTextFormField(
                        controller: _passwordController,
                        labelText: 'Password',
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password is required';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                AppButton(
                  height: 48,
                  isLoading: _isLoading,
                  onPressed: () async {
                    // バリデーションエラーがある場合、処理を中断
                    if (!_formKey.currentState!.validate()) return;

                    // TODO 連携情報をサーバーに送信
                    debugPrint(_selectedService?.name ?? 'null');
                    // この時点で画面が破棄されている場合、処理を中断
                    if (!mounted) return;
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('連携しました！'),
                        content: const Text('連携が完了しました！'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              // TODO TOP画面へ
                              Navigator.of(context).pop();
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                      barrierDismissible: false,
                    );
                  },
                  text: '連携する！',
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
