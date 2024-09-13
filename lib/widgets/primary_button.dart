import 'package:flutter/material.dart';
import 'package:posapp/configs/app_theme.dart';

import '../configs/app_color.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key, required this.onPressed, required this.textValue});

  final void Function()? onPressed;
  final String textValue;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Text(textValue,
          style: Theme.of(context)
              .textTheme
              .medium
              .copyWith(fontWeight: FontWeight.w400, color: AppColor.white),
          textAlign: TextAlign.center),
    );
  }
}
