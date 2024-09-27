// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTexfield extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String hint;
  final IconData? prefixIconData;
  final bool isObscure;
  final bool hasSuffix;
  final VoidCallback? onPressed;

  const CustomTexfield({
    Key? key,
    required this.controller,
    required this.textInputType,
    required this.textInputAction,
    required this.hint,
    this.prefixIconData,
    this.isObscure = false,
    this.hasSuffix = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      obscureText: isObscure,
      decoration: InputDecoration(
        suffixIcon: hasSuffix
            ? IconButton(
                onPressed: onPressed,
                icon: Icon(
                  isObscure ? Icons.visibility : Icons.visibility_off
                ),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.0,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.0,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: prefixIconData != null
            ? Icon(
                prefixIconData,
                color: Colors.grey,
              )
            : null,
        hintText: hint,
      ),
    );
  }
}
