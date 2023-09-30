import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.controller,
    this.labelText = '',
    this.obscureText = false,
    this.validator,
  });

  final TextEditingController? controller; // 入力値を管理するコントローラー
  final String labelText; // 入力欄のラベル
  final bool obscureText; // パスワードなど入力値をマスキングするかどうか
  final FormFieldValidator<String>? validator; // 入力値のバリデーション処理

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
      obscureText: obscureText,
      cursorColor: Colors.green,
      validator: validator,
    );
  }
}
