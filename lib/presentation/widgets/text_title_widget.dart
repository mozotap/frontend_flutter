import 'package:flutter/material.dart';
import 'package:mozotap/presentation/utils/app_colors.dart';

class TextTitleWidget extends StatelessWidget {
  final String text;

  const TextTitleWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor,
        fontFamily: 'Poppins',
      ),
    );
  }
}
