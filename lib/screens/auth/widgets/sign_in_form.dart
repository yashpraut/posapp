import 'package:flutter/material.dart';
import 'package:posapp/configs/app_color.dart';
import 'package:posapp/configs/app_spacing.dart';
import 'package:posapp/configs/app_theme.dart';
import 'package:posapp/widgets/generic_text_field.dart';
import 'package:posapp/widgets/primary_button.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back!",
                    style: Theme.of(context).textTheme.xxLarge.copyWith(
                        fontWeight: FontWeight.w800, color: AppColor.black)),
                Text("Please, sign in to continue.",
                    style: Theme.of(context).textTheme.tinySmall.copyWith(
                        fontWeight: FontWeight.w800, color: AppColor.grey)),
                const SizedBox(height: smallerSpacing),
                TextFieldWidget(
                  onTextFieldChanged: (textField) {},
                  hintText: 'Sales Id number',
                ),
                const SizedBox(height: xxTinySpacing),
                TextFieldWidget(
                  onTextFieldChanged: (textField) {},
                  hintText: 'password',
                ),
                const SizedBox(height: xxxSmallestSpacing),
                SizedBox(
                  height: 50,
                  child: PrimaryButton(onPressed: () {}, textValue: 'Sign in'),
                ),
                const SizedBox(height: xxxSmallestSpacing),
                const Align(alignment: Alignment.center, child: Text("or")),
                const SizedBox(height: xxxSmallestSpacing),
                Row(
                  children: [
                    _buildSocialCard(context, 'assets/icons/google.png',
                        "Sign up with Google"),
                    const SizedBox(width: xxxSmallestSpacing),
                    _buildSocialCard(context, 'assets/icons/facebook.png',
                        "Sign up with facebook"),
                  ],
                ),
                const SizedBox(height: xxLargeSpacing),
                RichText(
                    text: TextSpan(
                        text: 'By signing up, I agree to the ',
                        style: Theme.of(context).textTheme.tinySmall.copyWith(
                            fontWeight: FontWeight.w800, color: AppColor.grey),
                        children: [
                      TextSpan(
                          text: 'Terms of Service',
                          style: Theme.of(context).textTheme.tinySmall.copyWith(
                              fontWeight: FontWeight.w800,
                              color: AppColor.blue)),
                      TextSpan(
                          text: ' and ',
                          style: Theme.of(context).textTheme.tinySmall.copyWith(
                              fontWeight: FontWeight.w800,
                              color: AppColor.grey)),
                      TextSpan(
                          text: 'Privacy policy',
                          style: Theme.of(context).textTheme.tinySmall.copyWith(
                              fontWeight: FontWeight.w800,
                              color: AppColor.blue)),
                    ]))
              ],
            )));
  }

  Expanded _buildSocialCard(BuildContext context, image, title) {
    return Expanded(
        child: Card(
            elevation: 2,
            shadowColor: AppColor.black,
            child: Padding(
                padding: const EdgeInsets.all(xxxTinierSpacing),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(image, width: xxxSmallestSpacing),
                      const SizedBox(width: xxTinierSpacing),
                      Text(title,
                          style: Theme.of(context).textTheme.tinySmall.copyWith(
                              fontWeight: FontWeight.w800,
                              color: AppColor.black)),
                    ]))));
  }
}
