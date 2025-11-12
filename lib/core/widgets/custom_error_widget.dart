import 'package:flutter/material.dart';
import 'package:kitap/core/utils/styles.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorMessage;
  const CustomErrorWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      style: Styles.textStyle18,
      textAlign: TextAlign.center,
    );
  }
}
