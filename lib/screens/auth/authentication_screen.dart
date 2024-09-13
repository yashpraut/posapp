import 'package:flutter/material.dart';
import 'package:posapp/screens/auth/widgets/sign_in_form.dart';
import 'package:posapp/screens/auth/widgets/sign_in_images.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        return const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: SignInImages()),
              Expanded(child: SignInForm())
            ]);
      },
    ));
  }
}
