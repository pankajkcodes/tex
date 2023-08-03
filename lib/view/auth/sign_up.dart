import 'package:flutter/material.dart';

import 'package:tex/utils/resources/app_colors.dart';
import 'package:tex/utils/resources/app_dimens.dart';
import 'package:tex/utils/resources/app_styles.dart';
import 'package:tex/view/widgets/custom_Text_formfield.dart';

import '../../utils/resources/app_dimens.dart';
import '../widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Image.asset(
                "assets/images/AppIcon.png",
                fit: BoxFit.contain,
                width: 190,
                height: 190,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                children: [
                  SizedBox(
                      height: 30,
                      width: AppDimension.width(context) * 0.3,
                      child: Text(
                        'Name',
                        style: AppStyle.kTextStyle18(Colors.grey),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: CustomTextFormField(
                      hintText: 'Name',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                children: [
                  SizedBox(
                    height: 30,
                    width: AppDimension.width(context) * 0.3,
                    child: Text('Phone No',
                        style: AppStyle.kTextStyle18(Colors.grey)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: CustomTextFormField(
                      hintText: 'Phone no',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                children: [
                  SizedBox(
                      height: 30,
                      width: AppDimension.width(context) * 0.3,
                      child: Text(
                        'Email id',
                        style: AppStyle.kTextStyle18(Colors.grey),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: CustomTextFormField(
                      hintText: 'Email id',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                children: [
                  SizedBox(
                      height: 30,
                      width: AppDimension.width(context) * 0.3,
                      child: Text(
                        'Gender',
                        style: AppStyle.kTextStyle18(Colors.grey),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: CustomTextFormField(
                      hintText: 'Gender',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                children: [
                  SizedBox(
                      height: 30,
                      width: AppDimension.width(context) * 0.3,
                      child: Text(
                        'Password',
                        style: AppStyle.kTextStyle18(Colors.grey),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: CustomTextFormField(
                      hintText: 'Password',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: SizedBox(
                width: AppDimension.width(context) * 0.9,
                child: CustomButton(
                    bgColor: AppColors.pageBackground,
                    onClick: () {},
                    text: 'Create Account',

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
