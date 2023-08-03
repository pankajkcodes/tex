import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:tex/utils/resources/app_colors.dart';
import 'package:tex/utils/resources/app_dimens.dart';
import 'package:tex/utils/resources/app_styles.dart';
import 'package:tex/view/widgets/custom_appbar.dart';

import '../../utils/resources/app_dimens.dart';
import '../widgets/custom_button.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({Key? key}) : super(key: key);

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'Delete Account',
        centerTitle: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                "Are you sure you want to close your TaxMe account?",
                style: AppStyle.kTextStyle20(Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "You will no longer be able to log into your account or access your account projection from your TaxM app or from the TaxMe website.",
                style: AppStyle.kTextStyle16(Colors.black),
              ),
              const Divider(),
              Text(
                "Verify the OTP sent on your mobile +21655 to delete your account",
                style: AppStyle.kTextStyle16(Colors.black),
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                  width: AppDimension.width(context) * 0.8,
                  height: 50,
                  child: CustomButton(
                    onClick: () {},
                    bgColor: AppColors.pageBackground,
                    text: 'Send OTP',
                  )),
              const SizedBox(
                height: 20,
              ),
              const Divider()
            ],
          ),
        ),
      ),
    );
  }
}
