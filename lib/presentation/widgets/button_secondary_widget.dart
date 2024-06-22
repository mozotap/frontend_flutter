import 'package:flutter/material.dart';
import 'package:mozotap/presentation/utils/size_responsive.dart';
import 'package:mozotap/presentation/utils/app_colors.dart'; // Asegúrate de tener una definición de AppColors

class ButtonSecondaryOutlineWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color borderColor;
  final Color textColor;
  final BuildContext context;

  const ButtonSecondaryOutlineWidget({
    super.key,
    required this.text,
    required this.onPressed,
    required this.context,
    this.borderColor = AppColors.secondary,
    this.textColor = AppColors.secondary,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
          side: BorderSide(color: borderColor, width: 2.0),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          textStyle: const TextStyle(
            fontSize: 18,
          ),
          foregroundColor: AppColors.secondary),
      child: Padding(
        padding: EdgeInsets.only(
            top: SizeResponsive.size8Sm(context),
            bottom: SizeResponsive.size8Sm(context)),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16.0,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
