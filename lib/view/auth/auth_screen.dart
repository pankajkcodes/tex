import 'package:flutter/material.dart';
import 'package:tex/Utils/resources/app_colors.dart';
import 'package:tex/view/auth/login_screen.dart';
import 'package:tex/view/auth/sign_up.dart';

import 'package:tex/view/bottom_bar/bottom_bar.dart';

import '../../utils/resources/app_dimens.dart';
import '../widgets/custom_button.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext conText) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(conText).size.width,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(conText).size.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Image.asset(
                  "assets/images/AppIcon.png",
                  fit: BoxFit.contain,
                  width: 190,
                  height: 190,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 60),
              width: AppDimension.width(conText) * 0.8,
              child: CustomButton(
                bgColor: AppColors.primaryColor,
                onClick: () {
                  Navigator.push(conText,
                      MaterialPageRoute(builder: (conText) => SignUpScreen()));
                },
                text: "Sign up",

              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              width: AppDimension.width(conText) * 0.8,
              child: CustomButton(
                bgColor: AppColors.primaryColor,
                onClick: () {
                  Navigator.push(conText,
                      MaterialPageRoute(builder: (conText) => LogInScreen()));
                },
                text: "Log in",

              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Or",
                  style: TextStyle(fontSize: 29),
                )),
            Container(
              padding: const EdgeInsets.only(top: 30),
              width: AppDimension.width(conText) * 0.8,
              child: CustomButton(
                bgColor: AppColors.contentColorWhite,
                fgColor: AppColors.contentColorBlack,
                onClick: () {},
                text: "Google",

              ),
            ),
          ],
        ),
      ),
    );
  }
}
