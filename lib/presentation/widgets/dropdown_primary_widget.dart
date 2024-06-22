import 'package:flutter/material.dart';
import 'package:mozotap/presentation/utils/app_colors.dart';
import 'package:mozotap/presentation/utils/size_responsive.dart';

class DropdownPrimary extends StatelessWidget {
  final List<String> items;
  final String label;
  final String? selectedValue;
  final String hint;
  final ValueChanged<String?> onChanged;

  const DropdownPrimary({
    super.key,
    required this.items,
    required this.label,
    this.selectedValue,
    required this.hint,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
              fontSize: 16, fontFamily: 'Poppins', color: AppColors.textColor),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: selectedValue,
          isDense: false,
          itemHeight: SizeResponsive.responsiveSize(context, 56),
          hint: Text(hint),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
          ),
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Text(item),
              ),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
