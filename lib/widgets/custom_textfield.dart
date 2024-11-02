import 'package:flutter/material.dart';
import 'package:ntf_app/presentation/core/color.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;

  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.validator,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        fillColor: AppColor.greyColorPrimary.withOpacity(0.5),
        filled: true,
        border: OutlineInputBorder(
          //borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none
        ),
      ),
      validator: validator,
    );
  }
}
