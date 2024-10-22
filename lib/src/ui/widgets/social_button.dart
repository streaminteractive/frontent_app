import 'package:flutter/material.dart';
import 'package:streamplay/src/ui/theme/app_text_styles.dart';
import 'package:streamplay/src/ui/widgets/primary_field.dart';

class SocialButtonWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed;

  const SocialButtonWidget({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: AppColors.textColor, width: 2),
        ),
      ),
      onPressed: onPressed,
      icon: Image.asset(imagePath, width: 20, height: 20),
      label: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: Text(text, style: AppTextStyles.textButtonOutline),
      ),
    );
  }
}
