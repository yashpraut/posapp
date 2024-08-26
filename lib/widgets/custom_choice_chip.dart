import 'package:flutter/material.dart';
import 'package:posapp/configs/app_theme.dart';

import '../configs/app_color.dart';

class CustomChoiceChip extends StatelessWidget {
  final String label;
  final bool selected;
  final Function(bool) onSelected;

  const CustomChoiceChip(
      {super.key,
      required this.label,
      required this.selected,
      required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        label: Text(label),
        labelStyle: Theme.of(context)
            .textTheme
            .xxSmall
            .copyWith(color: AppColor.black, fontWeight: FontWeight.normal),
        backgroundColor: AppColor.lightestGrey,
        selected: selected,
        selectedColor:
            (selected == true) ? AppColor.green : AppColor.lightestGrey,
        onSelected: onSelected);
  }
}
