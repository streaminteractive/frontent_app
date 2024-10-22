import 'package:flutter/material.dart';
import 'package:streamplay/src/ui/theme/app_text_styles.dart';
import 'package:streamplay/src/ui/widgets/primary_field.dart';

class DividerWithTextWidget extends StatelessWidget {
  final String text;

  const DividerWithTextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: AppColors.textColorLight,
            thickness: 1.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(text, style: AppTextStyles.textBody),
        ),
        const Expanded(
          child: Divider(
            color: AppColors.textColorLight,
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}
