import 'package:flutter/material.dart';

import 'package:tex/utils/resources/app_colors.dart';
import 'package:tex/utils/resources/app_dimens.dart';
import 'package:tex/utils/resources/app_styles.dart';
import 'package:tex/view/home/profile_detail.dart';
import 'package:tex/view/widgets/custom_appbar.dart';

import '../../utils/resources/app_dimens.dart';
import '../widgets/custom_button.dart';
import 'delete_account.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: "Profile",
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColors.pageBackground,
                  child: Text('P',
                      style: TextStyle(
                          color: AppColors.contentColorWhite,
                          fontSize: AppDimension.menuTextSize)),
                ),
                title: Text(
                  "Pankaj",
                  style: TextStyle(color: AppColors.contentColorBlack),
                ),
                subtitle: Text('Pankaj@gmail.com'),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                "Account Setting",
                style: AppStyle.kTextStyle18(Colors.black),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.headset_mic_sharp),
              title: Text('Help Center'),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.policy),
              title: Text('Privacy Policy'),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.share),
              title: Text('Help Centre'),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.rate_review),
              title: Text('Rate The App'),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileDetail()));
              },
              leading: Icon(Icons.edit),
              title: Text('Others Edit'),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            const Divider(),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 50,
                    child: CustomButton(
                      bgColor: AppColors.pageBackground,
                      onClick: () {},
                      text: 'Logout',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: AppDimension.width(context) * 0.5,
                  height: 50,
                  child: CustomButton(
                      bgColor: AppColors.pageBackground,
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DeleteAccount()));
                      },
                      text: 'Delete Account'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
