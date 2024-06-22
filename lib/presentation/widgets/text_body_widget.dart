import 'package:flutter/material.dart';
import 'package:mozotap/presentation/utils/app_colors.dart';

class TextBodyWidget extends StatelessWidget {
  final String text;
  final TextAlign textAlign;

  const TextBodyWidget({
    super.key,
    required this.text,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: const TextStyle(
        fontSize: 16,
        color: AppColors.textColor,
        fontFamily: 'Poppins',
      ),
    );
  }
}
