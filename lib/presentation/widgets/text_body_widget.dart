import 'package:flutter/material.dart';
import 'package:mozotap/presentation/utils/app_colors.dart';

class TextBodyWidget extends StatelessWidget {
  final String text;

  const TextBodyWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        color: AppColors.textColor,
        fontFamily: 'Poppins',
      ),
    );
  }
}
