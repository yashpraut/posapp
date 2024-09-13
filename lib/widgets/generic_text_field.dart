import 'package:flutter/material.dart';
import 'package:posapp/configs/app_theme.dart';
import '../configs/app_color.dart';
import '../configs/app_spacing.dart';

typedef StringCallBack = Function(String textField);

class TextFieldWidget extends StatelessWidget {
  final TextInputAction? textInputAction;
  final StringCallBack onTextFieldChanged;
  final int? maxLength;
  final int? maxLines;
  final TextInputType? textInputType;
  final TextEditingController textFieldController = TextEditingController();
  final String value;
  final String? hintText;
  final bool obscureText;
  final bool readOnly;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  TextFieldWidget(
      {super.key,
      this.textInputAction,
      this.maxLength,
      this.textInputType,
      this.value = '',
      this.hintText,
      this.maxLines = 1,
      required this.onTextFieldChanged,
      this.obscureText = false,
      this.readOnly = false,
      this.prefixIcon,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    textFieldController.text = value;
    return TextField(
        readOnly: readOnly,
        controller: textFieldController,
        onChanged: (value) {
          onTextFieldChanged(value);
        },
        keyboardType: textInputType,
        textInputAction: textInputAction,
        maxLines: maxLines,
        maxLength: maxLength,
        cursorColor: AppColor.black,
        obscureText: obscureText,
        decoration: InputDecoration(
          counterText: '',
          hintStyle:
              Theme.of(context).textTheme.xSmall.copyWith(color: AppColor.grey),
          hintText: hintText,
          contentPadding: const EdgeInsets.all(xxTinierSpacing),
          enabled: true,
          filled: true,
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          fillColor: AppColor.lightestGrey,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ));
  }
}
