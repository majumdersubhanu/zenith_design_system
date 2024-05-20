import 'package:flutter/material.dart';
import 'package:zenith_design_system/colors/app_colors.dart';
import 'package:zenith_design_system/typography/typography.dart';

enum ButtonType {
  primary,
  error,
  success,
  warning,
  secondary,
}

class ZenithFlatButton extends StatelessWidget {
  final ButtonType buttonType;
  final void Function() onTap;
  final String label;
  final IconData? icon;

  const ZenithFlatButton({
    super.key,
    this.buttonType = ButtonType.primary,
    required this.onTap,
    required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onTap,
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
            side: BorderSide.none,
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(getBackgroundColor()),
        foregroundColor: const WidgetStatePropertyAll(AppColors.surface50),
        enableFeedback: true,
        minimumSize: const WidgetStatePropertyAll(Size(113, 44)),
        splashFactory: InkRipple.splashFactory,
        overlayColor: WidgetStatePropertyAll(getOverlayColor()),
        textStyle: WidgetStatePropertyAll(AppTextStyles.bodyMdBold),
        padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(vertical: 12, horizontal: 20)),
        iconSize: const WidgetStatePropertyAll(16),
        iconColor: const WidgetStatePropertyAll(AppColors.surface50),
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 8),
          Text(label),
        ],
      ),
    );
  }

  getBackgroundColor() {
    switch (buttonType) {
      case ButtonType.primary:
        return AppColors.primary200;
      case ButtonType.secondary:
        return AppColors.secondary200;
      case ButtonType.success:
        return AppColors.success200;
      case ButtonType.warning:
        return AppColors.warning200;
      case ButtonType.error:
        return AppColors.danger200;
      default:
        return AppColors.primary200;
    }
  }

  getOverlayColor() {
    switch (buttonType) {
      case ButtonType.primary:
        return AppColors.primary300;
      case ButtonType.secondary:
        return AppColors.secondary300;
      case ButtonType.success:
        return AppColors.success300;
      case ButtonType.warning:
        return AppColors.warning300;
      case ButtonType.error:
        return AppColors.danger300;
      default:
        return AppColors.primary300;
    }
  }
}

class ZenithOutlinedButton extends StatelessWidget {
  final ButtonType buttonType;
  final void Function() onTap;
  final String label;
  final IconData? icon;

  const ZenithOutlinedButton({
    super.key,
    this.buttonType = ButtonType.primary,
    required this.onTap,
    required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onTap,
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
            side: BorderSide(
              color: getBackgroundColor(),
              width: 2,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
        ),
        backgroundColor: WidgetStateColor.transparent,
        foregroundColor: WidgetStatePropertyAll(getBackgroundColor()),
        enableFeedback: true,
        elevation: const WidgetStatePropertyAll(0),
        minimumSize: const WidgetStatePropertyAll(Size(113, 44)),
        splashFactory: InkRipple.splashFactory,
        overlayColor: WidgetStatePropertyAll(getOverlayColor()),
        textStyle: WidgetStatePropertyAll(AppTextStyles.bodyMdBold),
        padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(vertical: 12, horizontal: 20)),
        iconSize: const WidgetStatePropertyAll(16),
        iconColor: WidgetStatePropertyAll(getBackgroundColor()),
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 8),
          Text(label),
        ],
      ),
    );
  }

  getBackgroundColor() {
    switch (buttonType) {
      case ButtonType.primary:
        return AppColors.primary200;
      case ButtonType.secondary:
        return AppColors.secondary200;
      case ButtonType.success:
        return AppColors.success200;
      case ButtonType.warning:
        return AppColors.warning200;
      case ButtonType.error:
        return AppColors.danger200;
      default:
        return AppColors.primary200;
    }
  }

  getOverlayColor() {
    switch (buttonType) {
      case ButtonType.primary:
        return AppColors.opacityPrimary;
      case ButtonType.secondary:
        return AppColors.opacitySecondary;
      case ButtonType.success:
        return AppColors.opacitySuccess;
      case ButtonType.warning:
        return AppColors.opacityWarning;
      case ButtonType.error:
        return AppColors.opacityDanger;
      default:
        return AppColors.opacityPrimary;
    }
  }
}
