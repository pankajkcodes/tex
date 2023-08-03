import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tex/utils/resources/app_colors.dart';
import 'package:tex/utils/resources/app_dimens.dart';

import '../../utils/resources/app_dimens.dart';
import '../widgets/custom_button.dart';

class PayCheckScreen extends StatefulWidget {
  const PayCheckScreen({Key? key}) : super(key: key);

  @override
  State<PayCheckScreen> createState() => _PayCheckScreenState();
}

class _PayCheckScreenState extends State<PayCheckScreen> {
  final toDateController = TextEditingController();
  final fromDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.all(11),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(11)),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    //get today's date
                                    firstDate: DateTime(2000),
                                    //DateTime.now() - not to allow to choose before today.
                                    lastDate: DateTime(2101));
                                if (pickedDate != null) {
                                  print(
                                      pickedDate); //get the picked date in the format => 2022-07-04 00:00:00.000
                                  String formattedDate =
                                      DateFormat('dd-MM-yyyy').format(
                                          pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                                  print(
                                      formattedDate); //formatted date output using intl package =>  2022-07-04
                                  //You can format date as per your need

                                  setState(() {
                                    toDateController.text =
                                        formattedDate; //set foratted date to TextField value.
                                  });
                                } else {
                                  print("Date is not selected");
                                }
                              },
                              icon: Icon(Icons.calendar_month_outlined),
                            ),
                            Text("${toDateController.text}")
                          ],
                        )),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(11),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(11)),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  //get today's date
                                  firstDate: DateTime(2000),
                                  //DateTime.now() - not to allow to choose before today.
                                  lastDate: DateTime(2101));
                              if (pickedDate != null) {
                                print(
                                    pickedDate); //get the picked date in the format => 2022-07-04 00:00:00.000
                                String formattedDate = DateFormat('dd-MM-yyyy')
                                    .format(
                                        pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                                print(formattedDate);

                                setState(() {
                                  fromDateController.text = formattedDate;
                                });
                              } else {
                                print("Date is not selected");
                              }
                            },
                            icon: Icon(Icons.calendar_month_outlined),
                          ),
                          Text("${fromDateController.text}")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
                width: AppDimension.width(context) * 0.96,
                height: AppDimension.height(context) * 0.06,
                child: CustomButton(
                  onClick: () {},
                  bgColor: AppColors.pageBackground,
                  text: 'Search',
                ))
          ],
        ),
      ),
    );
  }
}
