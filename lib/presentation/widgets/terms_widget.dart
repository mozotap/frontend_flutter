import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mozotap/presentation/utils/app_colors.dart';

class TermsWidget extends StatelessWidget {
  const TermsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontFamily: 'Poppins',
          ),
          children: [
            const TextSpan(
              text: 'By signing up, you confirm to have read Able pro ',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textColor,
                fontFamily: 'Poppins',
              ),
            ),
            TextSpan(
              text: 'Privacy Policy',
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.primary,
                fontFamily: 'Poppins',
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
            const TextSpan(
              text: ' and agree to the ',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textColor,
                fontFamily: 'Poppins',
              ),
            ),
            TextSpan(
              text: 'Terms of Service',
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.primary,
                fontFamily: 'Poppins',
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
            const TextSpan(text: '.'),
          ],
        ),
      ),
    );
  }
}
