import 'package:flutter/material.dart';
import 'package:mozotap/presentation/utils/app_colors.dart';

class FieldPrimaryWidget extends StatefulWidget {
  final String labelText;
  final String placeholder;
  final TextInputType fieldType;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final bool isPassword;

  const FieldPrimaryWidget({
    super.key,
    required this.labelText,
    required this.placeholder,
    required this.fieldType,
    required this.controller,
    required this.validator,
    this.isPassword = false,
  });

  @override
  State<FieldPrimaryWidget> createState() => _FieldPrimaryWidgetState();
}

class _FieldPrimaryWidgetState extends State<FieldPrimaryWidget> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: const TextStyle(
              fontSize: 16, fontFamily: 'Poppins', color: AppColors.textColor),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: widget.controller,
          keyboardType: widget.fieldType,
          obscureText: widget.isPassword ? _obscureText : false,
          decoration: InputDecoration(
            hintText: widget.placeholder,
            hintStyle: const TextStyle(fontSize: 14, fontFamily: 'Poppins'),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: AppColors.primary,
                width: 2.0,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 2.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 2.0,
              ),
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.textLight,
                    ),
                    onPressed: _toggleVisibility,
                  )
                : null,
          ),
          validator: widget.validator,
        ),
      ],
    );
  }
}
