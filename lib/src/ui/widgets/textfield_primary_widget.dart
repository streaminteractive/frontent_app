import 'package:flutter/material.dart';
import 'package:streamplay/src/ui/theme/app_text_styles.dart';
import 'package:streamplay/src/ui/widgets/primary_field.dart';

class TextFieldPrimary extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController? controller;
  final TextInputType typeText;
  final bool enabled;

  const TextFieldPrimary({
    super.key,
    required this.labelText,
    required this.hintText,
    this.controller,
    required this.typeText,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: AppTextStyles.textBody,
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          keyboardType: typeText,
          enabled: enabled,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: enabled ? Colors.white : Colors.grey[100],
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.textColor),
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.textColor, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.textColor,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            focusColor: Colors.white,
            hintStyle: AppTextStyles.textBodyLight,
          ),
          style: AppTextStyles.textBody,
          cursorColor: AppColors.textColor,
        ),
      ],
    );
  }
}
