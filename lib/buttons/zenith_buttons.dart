import 'package:flutter/material.dart';
import 'package:zenith_design_system/colors/app_colors.dart';
import 'package:zenith_design_system/typography/typography.dart';

class ButtonStyles {
  // Primary Button Style
  static final ButtonStyle primary = ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: AppColors().primary400,
    textStyle: AppTextStyles.bodyLgBold,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  );

  static final ButtonStyle primaryOutlined = OutlinedButton.styleFrom(
    backgroundColor: AppColors().primary400,
    side: BorderSide(color: AppColors().primary400),
    textStyle: AppTextStyles.bodyLgBold,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  );

  static final ButtonStyle primaryText = TextButton.styleFrom(
    backgroundColor: AppColors().primary400,
    textStyle: AppTextStyles.bodyLgBold,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  );

  // Danger Button Style
  static final ButtonStyle danger = ElevatedButton.styleFrom(
    backgroundColor: AppColors().danger400,
    foregroundColor: Colors.white,
    textStyle: AppTextStyles.bodyLgBold,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  );

  static final ButtonStyle dangerOutlined = OutlinedButton.styleFrom(
    backgroundColor: AppColors().danger400,
    side: BorderSide(color: AppColors().danger400),
    textStyle: AppTextStyles.bodyLgBold,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  );

  static final ButtonStyle dangerText = TextButton.styleFrom(
    backgroundColor: AppColors().danger400,
    textStyle: AppTextStyles.bodyLgBold,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  );

  // Success Button Style
  static final ButtonStyle success = ElevatedButton.styleFrom(
    backgroundColor: AppColors().success400,
    foregroundColor: Colors.white,
    textStyle: AppTextStyles.bodyLgBold,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  );

  static final ButtonStyle successOutlined = OutlinedButton.styleFrom(
    backgroundColor: AppColors().success400,
    side: BorderSide(color: AppColors().success400),
    textStyle: AppTextStyles.bodyLgBold,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  );

  static final ButtonStyle successText = TextButton.styleFrom(
    backgroundColor: AppColors().success400,
    textStyle: AppTextStyles.bodyLgBold,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  );

  // Warning Button Style
  static final ButtonStyle warning = ElevatedButton.styleFrom(
    backgroundColor: AppColors().warning400,
    foregroundColor: Colors.white,
    textStyle: AppTextStyles.bodyLgBold,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  );

  static final ButtonStyle warningOutlined = OutlinedButton.styleFrom(
    backgroundColor: AppColors().warning400,
    side: BorderSide(color: AppColors().warning400),
    textStyle: AppTextStyles.bodyLgBold,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  );

  static final ButtonStyle warningText = TextButton.styleFrom(
    backgroundColor: AppColors().warning400,
    textStyle: AppTextStyles.bodyLgBold,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  );

  // Icon Button Style
  static ButtonStyle icon({required Color color}) {
    return IconButton.styleFrom(
      backgroundColor: color,
    );
  }

  // Rounded Button Style
  static ButtonStyle rounded({required ButtonStyle baseStyle}) {
    return baseStyle.copyWith(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
