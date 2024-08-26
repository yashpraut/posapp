import 'package:flutter/material.dart';
import 'package:posapp/configs/app_theme.dart';

import '../configs/app_spacing.dart';

class AndroidPopUp extends StatelessWidget {
  final String titleValue;
  final String contentValue;
  final void Function() onPrimaryButton;
  final void Function()? onSecondaryButton;
  final EdgeInsetsGeometry? contentPadding;
  final bool isNoVisible;
  final String textValue;

  const AndroidPopUp(
      {super.key,
      required this.titleValue,
      required this.contentValue,
      required this.onPrimaryButton,
      this.contentPadding,
      this.isNoVisible = true,
      this.textValue = 'Yes',
      this.onSecondaryButton});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        titlePadding:
            const EdgeInsets.only(left: xxTinySpacing, top: xxTinySpacing),
        buttonPadding: const EdgeInsets.all(xxTiniestSpacing),
        contentPadding: (contentValue == '')
            ? contentPadding
            : const EdgeInsets.all(xxTinySpacing),
        actionsPadding: const EdgeInsets.only(right: xxTinySpacing),
        title: Text(titleValue),
        content: Text(contentValue),
        titleTextStyle: Theme.of(context)
            .textTheme
            .medium
            .copyWith(fontWeight: FontWeight.w500),
        actions: [
          Visibility(
              visible: isNoVisible,
              child: TextButton(
                  onPressed: onSecondaryButton ??
                      () {
                        Navigator.pop(context);
                      },
                  child: const Text('No'))),
          TextButton(onPressed: onPrimaryButton, child: Text(textValue))
        ]);
  }
}
