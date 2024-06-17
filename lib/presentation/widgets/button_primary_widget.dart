import 'package:flutter/material.dart';
import 'package:mozotap/presentation/utils/size_responsive.dart';

class ButtonPrimaryWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final BuildContext context;

  const ButtonPrimaryWidget({
    super.key,
    required this.text,
    required this.onPressed,
    required this.context,
    this.color = Colors.green,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        textStyle: const TextStyle(
          fontSize: 18,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: SizeResponsive.size8Sm(context), bottom: SizeResponsive.size8Sm(context)),
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
