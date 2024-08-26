import 'package:flutter/material.dart';

import '../configs/app_color.dart';
import '../configs/app_dimensions.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;
  final double? size;
  final double? dx;
  final double? dy;

  const CustomIconButton(
      {super.key,
      required this.icon,
      required this.onPressed,
      this.size = kIconSize,
      this.dx = 0,
      this.dy = -15});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        highlightColor: AppColor.transparent,
        constraints: const BoxConstraints(),
        padding: EdgeInsets.zero,
        splashColor: AppColor.transparent,
        icon: Icon(icon, size: size),
        onPressed: onPressed);
  }
}
