import 'package:flutter/material.dart';
import 'package:flutter_forwards/pages/home/ui.dart';
import 'package:flutter_forwards/pages/signin/ui.dart';
import 'package:flutter_forwards/repository/auth_repository.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text_form_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
                  'Create your account',
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
                      const SizedBox(height: 24),
                      AppTextFormField(
                        controller: _confirmPasswordController,
                        labelText: 'Confirm Password',
                        obscureText: true,
                        validator: (value) {
                          if (value != _passwordController.text) {
                            return 'Password does not match';
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

                    final result = await AuthRepository.signUp(
                      email: _emailController.text,
                      password: _passwordController.text,
                    );

                    if (!result) return;

                    // この時点で画面が破棄されている場合、処理を中断
                    if (!mounted) return;

                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  text: 'Continue',
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Already have an account?'),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const SigninPage(),
                          ),
                        );
                      },
                      child: const Text('Log in'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
