import 'package:flutter/material.dart';
import 'package:kitap/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final backgroundColor;
  final textColor;
  final borderRadius;
  final text;
  final void Function()? onPressed;

  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.borderRadius,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 50,
        child: TextButton(
          onPressed: onPressed,

          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
          ),
          child: Text(
            text,
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.w900,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
