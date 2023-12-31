
import 'package:flutter/material.dart';
import 'package:thoughtbox/presentation/core/colors.dart';
import 'package:thoughtbox/presentation/core/fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, height * .05),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: blue,
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: drawerText,
        ));
  }
}
