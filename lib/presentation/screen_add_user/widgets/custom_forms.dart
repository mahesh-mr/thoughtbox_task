import 'package:flutter/material.dart';
import 'package:thoughtbox/presentation/core/colors.dart';

class CustomTextForm extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator validator;
  final IconData icons;
  final String title;
  final TextInputType textinputType;
  final int maxline;

  const CustomTextForm({
    super.key,
    required this.controller,
    required this.icons,
    required this.maxline,
    required this.textinputType,
    required this.title,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxline,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(1),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: black)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: black),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: red),
          ),
          prefixIcon: Icon(
            icons,
            color: backgroundColor,
          ),
          label: Text(title),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          )),
    );
  }
}
