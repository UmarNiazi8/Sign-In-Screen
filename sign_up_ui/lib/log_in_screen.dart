import 'package:flutter/material.dart';
import 'package:sign_up_ui/pallete.dart';
import 'package:sign_up_ui/widget/Login_field.dart';
import 'package:sign_up_ui/widget/gradient_button.dart';
import 'package:sign_up_ui/widget/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/signin_balls.png'),
                const Text(
                  'Sign in.',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
                const SizedBox(
                  height: 50,
                ),
                SocialButton(
                  iconPath: 'assets/svgs/g_logo.svg',
                  label: 'Continue with Google',
                  iconColor: Pallete.whiteColor,
                  horizontalPadding: screenWidth * 0.12,
                ),
                const SizedBox(
                  height: 20,
                ),
                SocialButton(
                  iconPath: 'assets/svgs/f_logo.svg',
                  label: 'Continue with Facebook',
                  iconColor: Pallete.whiteColor,
                  horizontalPadding: screenWidth * 0.1,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'or',
                  style: TextStyle(fontSize: 17),
                ),
                const SizedBox(
                  height: 15,
                ),
                const LoginField(
                  hintText: 'Email',
                ),
                const SizedBox(
                  height: 15,
                ),
                const LoginField(
                  hintText: 'Password',
                ),
                const SizedBox(
                  height: 20,
                ),
                GradientButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
