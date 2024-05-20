import 'package:flutter/material.dart';
import 'package:zenith_design_system/spacing/app_spacing.dart';
import 'package:zenith_design_system/typography/typography.dart';
import '../colors/app_colors.dart';

class ZenithCheckBox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final bool isEnabled;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? textColor;
  final String label;
  final bool rounded;

  const ZenithCheckBox({
    super.key,
    required this.value,
    required this.onChanged,
    this.isEnabled = true,
    this.activeColor,
    this.inactiveColor,
    this.textColor,
    required this.label,
    this.rounded = false,
  });

  @override
  Widget build(BuildContext context) {
    final defaultActiveColor = activeColor ?? AppColors.primary400;
    final defaultTextColor =
        textColor ?? (value ? AppColors.primary400 : AppColors.surface400);

    return InkWell(
      onTap: isEnabled ? () => onChanged(!value) : null,
      borderRadius: rounded ? BorderRadius.circular(30.0) : BorderRadius.zero,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            onChanged: isEnabled ? onChanged : null,
            activeColor: defaultActiveColor,
            // fillColor: WidgetStateProperty.all(defaultActiveColor),
            value: value,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.space2),
            child: Text(
              label,
              style: AppTextStyles.bodyLg.copyWith(color: defaultTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
