import 'package:flutter/material.dart';

import 'package:tex/utils/resources/app_colors.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';

class LeaveDetails extends StatefulWidget {
  const LeaveDetails({Key? key}) : super(key: key);

  @override
  State<LeaveDetails> createState() => _LeaveDetailsState();
}

class _LeaveDetailsState extends State<LeaveDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        title: 'Leave Details',
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomButton(
          onClick: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AlertDialog(
                  title: Text('Test'),
                  content: Text('Start Date: 06/22/2023\n'
                      'End Date: 06/22/2025\n'
                      'Daily Hour: 6\n'
                      'Payment Rate: 10 Daily\n'
                      'GST Registered: No\n'
                      'Without Tax Rate: 1\n'
                      'First Payment Date: 06/26/2023 \n'
                      'Payment Frequency: Monthly\n'
                      'Employment Region: Nelson'),
                );
              },
            );
          },
          text: 'Add Leave',
          bgColor: AppColors.pageBackground,
        ),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
