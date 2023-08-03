import 'package:flutter/material.dart';

import 'package:tex/utils/resources/app_colors.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';

class EmploymentDetails extends StatefulWidget {
  const EmploymentDetails({Key? key}) : super(key: key);

  @override
  State<EmploymentDetails> createState() => _EmploymentDetailsState();
}

class _EmploymentDetailsState extends State<EmploymentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        title: 'Employment Details',
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
          text: 'Add Employment Details',
          bgColor: AppColors.pageBackground,
        ),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
