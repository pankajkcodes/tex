import 'package:flutter/material.dart';
import 'package:tex/Utils/resources/app_colors.dart';
import 'package:tex/view/home/profile_screen.dart';

import '../../utils/resources/app_styles.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (conText) => ProfileScreen()));
        },
        child: Container(
          margin: const EdgeInsets.all(6),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(50)),
          child: Center(
              child: Text(
            "P",
            style: AppStyle.kTextStyle18(Colors.black),
          )),
        ),
      ),
      title: Text(
        "TaxMe",
        style: AppStyle.kTextStyle24Bold(Colors.white),
      ),
      centerTitle: true,
      backgroundColor: AppColors.primaryColor,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SimpleAppBar({super.key, required this.title, this.centerTitle});

  final String title;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      title: Text(
        title,
        style: AppStyle.kTextStyle20B(Colors.white),
      ),
      centerTitle: centerTitle ?? true,
      backgroundColor: AppColors.primaryColor,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
