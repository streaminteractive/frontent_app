import 'package:flutter/material.dart';
import 'package:streamplay/src/ui/theme/app_text_styles.dart';
import 'package:streamplay/src/ui/widgets/primary_field.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final bool enabled;

  const PrimaryButtonWidget({
    super.key,
    required this.onTap,
    required this.text,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enabled ? onTap : null,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 20),
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(color: AppColors.textColor, width: 2),
        ),
      ),
      child: Text(text, style: AppTextStyles.textButtonOutline),
    );
  }
}
