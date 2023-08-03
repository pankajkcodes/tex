import 'package:flutter/material.dart';
import 'package:tex/Utils/resources/app_colors.dart';
import 'package:tex/utils/resources/app_dimens.dart';
import 'package:tex/view/bottom_bar/bottom_bar.dart';
import 'package:tex/view/widgets/custom_Text_formfield.dart';
import '../widgets/custom_button.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
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
                height: 150,
                width: AppDimension.width(context) * 0.87,
                padding: const EdgeInsets.only(top: 60),
                child: const CustomTextFormField(
                  hintText: 'Phone Number',
                )),
            Container(
              padding: const EdgeInsets.only(top: 10),
              width: AppDimension.width(context) * 0.87,
              child: CustomButton(
                bgColor: AppColors.primaryColor,
                onClick: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (conText) => BottomBar()));
                },
                text: "Log In",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
