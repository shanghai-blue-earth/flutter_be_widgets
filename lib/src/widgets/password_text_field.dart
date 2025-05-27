import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController? controller;
  final TextStyle? style;
  final bool obscureText;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? icon;
  final Color? iconColor;

  const PasswordTextField({
    super.key,
    this.controller,
    this.style,
    this.obscureText = true,
    this.hintText,
    this.hintStyle,
    this.icon,
    this.iconColor,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  void _onClickVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      controller: widget.controller,
      obscureText: _obscureText, //密码输入类型
      style: widget.style,
      decoration: InputDecoration(
        icon: widget.icon ?? const Icon(Icons.lock),
        iconColor: widget.iconColor,
        hintText: widget.hintText,
        hintStyle: widget.hintStyle,
        suffixIcon: IconButton(
          onPressed: _onClickVisibility,
          icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
        ),
      ),
    );
  }
}
