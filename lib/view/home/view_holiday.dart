import 'package:flutter/material.dart';
import 'package:tex/utils/resources/app_colors.dart';
import 'package:tex/view/widgets/custom_appbar.dart';

class ViewHoliday extends StatefulWidget {
  const ViewHoliday({Key? key}) : super(key: key);

  @override
  State<ViewHoliday> createState() => _ViewHolidayState();
}

class _ViewHolidayState extends State<ViewHoliday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'View Holiday',
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: AppColors.pageBackground),
                child: const ListTile(
                  leading: Text(
                    "Holidays - 2023",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 21,
                    color: Colors.white,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
