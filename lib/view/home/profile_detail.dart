import 'package:flutter/material.dart';

import 'package:tex/utils/resources/app_colors.dart';
import 'package:tex/utils/resources/app_dimens.dart';

import '../../utils/resources/app_dimens.dart';
import '../../utils/resources/app_styles.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_Text_formfield.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({Key? key}) : super(key: key);

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: SizedBox(
                  height: 100,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.pageBackground,
                    child: Text('P',
                        style: TextStyle(
                            color: AppColors.contentColorWhite,
                            fontSize: AppDimension.menuTextSize)),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                    Expanded(
                      child: CustomTextFormField(
                        hintText: 'Name',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  children: [
                    SizedBox(
                        height: 30,
                        width: AppDimension.width(context) * 0.3,
                        child: Text(
                          'DOB',
                          style: AppStyle.kTextStyle18(Colors.grey),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomTextFormField(
                        hintText: 'Date of birth',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  children: [
                    SizedBox(
                        height: 30,
                        width: AppDimension.width(context) * 0.3,
                        child: Text(
                          'Notification',
                          style: AppStyle.kTextStyle18(Colors.grey),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      child: CustomTextFormField(
                        hintText: 'Notification',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  children: [
                    SizedBox(
                        height: 30,
                        width: AppDimension.width(context) * 0.3,
                        child: Text(
                          'Code',
                          style: AppStyle.kTextStyle18(Colors.grey),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      child: CustomTextFormField(
                        hintText: 'Business Code',
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text("Click hare to calculate your ACC Levy")),
              Center(
                child: SizedBox(
                  width: AppDimension.width(context) * 0.9,
                  height: 50,
                  child: CustomButton(
                    bgColor: AppColors.pageBackground,
                    onClick: () {},
                    text: 'Save',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
