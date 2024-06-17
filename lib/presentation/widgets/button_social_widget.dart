import 'package:flutter/material.dart';
import 'package:mozotap/presentation/utils/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mozotap/presentation/utils/size_responsive.dart';

class ButtonSocialWidget extends StatelessWidget {
  final String svgIcon;
  final String label;
  final BuildContext context;
  final VoidCallback onPressed;

  const ButtonSocialWidget({
    super.key,
    required this.svgIcon,
    required this.label,
    required this.context,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.textColor,
        backgroundColor: AppColors.inactive,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      icon: SvgPicture.asset(
        svgIcon,
        width: 24,
        height: 24,
      ),
      label: Padding(
        padding: EdgeInsets.all(SizeResponsive.size12Sm(context)),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.textColor,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
