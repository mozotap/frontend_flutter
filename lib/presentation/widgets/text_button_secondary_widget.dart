import 'package:flutter/material.dart';
import 'package:mozotap/presentation/utils/app_colors.dart';

class TextButtonSecondaryWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const TextButtonSecondaryWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: AppColors.secondary,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
