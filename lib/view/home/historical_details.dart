import 'package:flutter/material.dart';

import 'package:tex/utils/resources/app_colors.dart';
import 'package:tex/utils/resources/app_dimens.dart';
import 'package:tex/utils/resources/app_styles.dart';
import 'package:tex/view/widgets/custom_appbar.dart';

import '../../utils/resources/app_dimens.dart';
import '../widgets/custom_button.dart';

class HistoricalDetails extends StatefulWidget {
  const HistoricalDetails({Key? key}) : super(key: key);

  @override
  State<HistoricalDetails> createState() => _HistoricalDetailsState();
}

class _HistoricalDetailsState extends State<HistoricalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        title: "Historical Balances",
        centerTitle: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 50),
                height: 100,
                child: Text(
                  "Financial Year 2023-2024",
                  style: AppStyle.kTextStyle18B(Colors.black),
                ),
              ),
              TextFormField(),
              TextFormField(),
              TextFormField(),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: SizedBox(
                    width: AppDimension.width(context) * 0.9,
                    height: 50,
                    child: CustomButton(
                      onClick: () {},
                      bgColor: AppColors.pageBackground,
                      text: 'Save',
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
