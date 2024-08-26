import 'package:flutter/material.dart';

import '../configs/app_color.dart';
import '../configs/app_spacing.dart';

class CustomEditDeletePopUpMenuOption extends StatelessWidget {
  final Function(String) onSelected;

  const CustomEditDeletePopUpMenuOption({super.key, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: xxTinierSpacing),
      child: Theme(
        data: Theme.of(context).copyWith(
          highlightColor: AppColor.transparent,
          splashColor: AppColor.transparent,
        ),
        child: PopupMenuButton(
          onSelected: onSelected,
          itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                value: 'Edit',
                child: Text('Edit'),
              ),
              const PopupMenuItem(
                value: 'Delete',
                child: Text('Delete'),
              ),
            ];
          },
        ),
      ),
    );
  }
}
