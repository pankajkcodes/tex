import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:tex/model/choice_value.dart';
import 'package:tex/view/home/ye_projection_screen.dart';
import 'package:tex/view/widgets/custom_appbar.dart';

import '../home/add_view_details.dart';
import '../home/pay_check.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State createState() {
    return _State();
  }
}

class _State extends State<BottomBar> with SingleTickerProviderStateMixin {
  final _tabItems = const ChoiceValue<List<TabItem>>(
    title: 'Icon Tab',
    label: 'Appbar use icon with Tab',
    value: [
      TabItem<IconData>(icon: Icons.pie_chart, title: "Ye Projections"),
      TabItem<IconData>(icon: Icons.book, title: "Paychecks"),
      TabItem<IconData>(icon: Icons.book, title: "Add/View Details"),
    ],
  );

  final ChoiceValue<TabStyle> _style = const ChoiceValue<TabStyle>(
    title: 'TabStyle.react',
    label: 'Appbar use react style',
    value: TabStyle.react,
  );

  final ChoiceValue<Curve> _curve = const ChoiceValue<Curve>(
    title: 'Curves.bounceInOut',
    label: 'The curve bounceInOut is used',
    value: Curves.bounceIn,
  );
  final Color _barColor = Colors.cyan;
  final Color _shadowColor = Colors.amber;
  final Gradient _gradient = const LinearGradient(
    colors: [Colors.purple, Colors.blue],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );
  TabController? _tabController;
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const YeProjectionScreen(),
    const PayCheckScreen(),
    const AddViewDetails(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabItems.value.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: TabBarView(
        controller: _tabController,
        children: List.generate(_tabItems.value.length, (index) {
          return _screens[index];
        }),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: _tabItems.value,
        style: _style.value,
        curve: _curve.value,
        shadowColor: _shadowColor,
        backgroundColor: _barColor,
        gradient: _gradient,
        controller: _tabController,
        onTap: (int i) {
          setState(() {
            _selectedIndex = i;
            _tabController!.animateTo(i);
          });
        },
      ),
    );
  }
}
