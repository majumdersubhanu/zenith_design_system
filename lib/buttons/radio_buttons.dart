import 'package:flutter/material.dart';
import 'package:zenith_design_system/spacing/app_spacing.dart';
import 'package:zenith_design_system/typography/typography.dart';
import '../colors/app_colors.dart';

class ZenithRadioButton extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final bool isEnabled;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? textColor;
  final String label;
  final bool rounded;

  const ZenithRadioButton({super.key, 
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
    final defaultTextColor = textColor ?? (value ? AppColors.primary400 : AppColors.surface400);

    return InkWell(
      onTap: isEnabled ? () => onChanged(!value) : null,
      borderRadius: rounded ? BorderRadius.circular(30.0) : BorderRadius.zero,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio<bool>(
            value: true,
            groupValue: value,
            onChanged: isEnabled ? onChanged : null,
            activeColor: defaultActiveColor,
            fillColor: WidgetStateProperty.all(defaultActiveColor),
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

class ZenithRadioButtonIcon extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final bool isEnabled;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? textColor;
  final String label;
  final IconData icon;

  const ZenithRadioButtonIcon({super.key, 
    required this.value,
    required this.onChanged,
    this.isEnabled = true,
    this.activeColor,
    this.inactiveColor,
    this.textColor,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final defaultActiveColor = activeColor ?? AppColors.primary400;
    final defaultInactiveColor = inactiveColor ?? AppColors.surface400;
    final defaultTextColor = textColor ?? (value ? AppColors.primary400 : AppColors.surface400);

    return InkWell(
      onTap: isEnabled ? () => onChanged(!value) : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio<bool>(
            value: true,
            groupValue: value,
            onChanged: isEnabled ? onChanged : null,
            activeColor: defaultActiveColor,
            fillColor: MaterialStateProperty.all(defaultActiveColor),
          ),
          const SizedBox(width: 8),
          Icon(
            icon,
            color: isEnabled ? defaultActiveColor : defaultInactiveColor,
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
