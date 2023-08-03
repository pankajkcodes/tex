import 'package:flutter/material.dart';
import 'package:tex/utils/resources/app_dimens.dart';
import 'package:tex/view/home/employment_details.dart';
import 'package:tex/view/home/view_holiday.dart';

import '../../utils/resources/app_colors.dart';
import '../widgets/custom_button.dart';
import 'historical_details.dart';

class AddViewDetails extends StatefulWidget {
  const AddViewDetails({Key? key}) : super(key: key);

  @override
  State<AddViewDetails> createState() => _AddViewDetailsState();
}

class _AddViewDetailsState extends State<AddViewDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: AppDimension.width(context) * 0.8,
                  child: CustomButton(
                    bgColor: AppColors.pageBackground,
                    onClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmploymentDetails()));
                    },
                    text: 'Employment Details',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: AppDimension.width(context) * 0.8,
                  child: CustomButton(
                    bgColor: AppColors.pageBackground,
                    onClick: () {},
                    text: 'Leave Details',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: AppDimension.width(context) * 0.8,
                  child: CustomButton(
                    bgColor: AppColors.pageBackground,
                    onClick: () {},
                    text: 'Adhoc Income',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: AppDimension.width(context) * 0.8,
                  child: CustomButton(
                    bgColor: AppColors.pageBackground,
                    onClick: () {},
                    text: 'Business Expense',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: AppDimension.width(context) * 0.8,
                  child: CustomButton(
                    bgColor: AppColors.pageBackground,
                    onClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HistoricalDetails()));
                    },
                    text: 'Historical Balances',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: AppDimension.width(context) * 0.8,
                  child: CustomButton(
                    bgColor: AppColors.pageBackground,
                    onClick: () {},
                    text: 'Adhoc  Work Hours',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: AppDimension.width(context) * 0.8,
                  child: CustomButton(
                    bgColor: AppColors.pageBackground,
                    onClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewHoliday()));
                    },
                    text: 'View Holidays',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
