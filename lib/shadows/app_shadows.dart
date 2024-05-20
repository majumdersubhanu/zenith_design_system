import 'package:flutter/material.dart';
import 'package:zenith_design_system/colors/app_colors.dart';

class LightModeShadows {
  static const BoxShadow flat = BoxShadow(
    color: Color.fromRGBO(36, 104, 147, 0.04),
    offset: Offset(1, 2),
    blurRadius: 2,
    spreadRadius: 0,
  );

  static const BoxShadow overlay = BoxShadow(
    color: Color.fromRGBO(36, 104, 147, 0.04),
    offset: Offset(4, 4),
    blurRadius: 4,
    spreadRadius: -1,
  );

  static const BoxShadow stickyNav = BoxShadow(
    color: Color.fromRGBO(36, 104, 147, 0.04),
    offset: Offset(4, 8),
    blurRadius: 8,
    spreadRadius: 0,
  );

  static const BoxShadow dialog = BoxShadow(
    color: Color.fromRGBO(36, 104, 147, 0.04),
    offset: Offset(8, 12),
    blurRadius: 12,
    spreadRadius: 0,
  );
}

class ElevationHelper {
  static List<BoxShadow> getShadows(double elevation, bool isDarkMode) {
    if (isDarkMode) {
      return [];
    } else {
      switch (elevation.round()) {
        case 2:
          return [LightModeShadows.flat];
        case 4:
          return [LightModeShadows.overlay];
        case 8:
          return [LightModeShadows.stickyNav];
        case 12:
          return [LightModeShadows.dialog];
        default:
          return [];
      }
    }
  }

  static Color getBackground(double elevation, bool isDarkMode) {
    if (isDarkMode) {
      switch (elevation.round()) {
        case 0:
          return AppColors.dark50;
        case 2:
          return AppColors.dark100;
        case 4:
          return AppColors.dark200;
        case 8:
          return AppColors.dark300;
        case 12:
          return AppColors.dark400;
        default:
          return AppColors.dark50;
      }
    } else {
      return Colors.transparent;
    }
  }
}
