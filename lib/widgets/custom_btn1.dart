// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ntf_app/presentation/core/color.dart';

// ignore: must_be_immutable
class CustomBtn1 extends StatelessWidget {
  String label;
  Function() function;
  Color? color;
  CustomBtn1({
    super.key,
    required this.label,
    required this.function,
    this.color = AppColor.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: color),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
