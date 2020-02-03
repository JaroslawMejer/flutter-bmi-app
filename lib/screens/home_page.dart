import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../components/main_tab.dart';
import '../components/info_tab.dart';
import '../components/list_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  GlobalKey _bottomNavigationKey = GlobalKey();

  TabController _tabController;

  int currentPage = 1;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(vsync: this, length: 3, initialIndex: currentPage);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _tabController.addListener(() {
      setState(() {
        currentPage = _tabController.index;
      });
    });
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          ListTab(),
          MainTab(),
          InfoTab(),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: currentPage,
        key: _bottomNavigationKey,
        items: <Widget>[
          Icon(Icons.list, size: 30),
          Icon(
            Icons.power_settings_new,
            size: 30,
          ),
          Icon(
            Icons.info,
            size: 30,
          )
        ],
        height: 60,
        color: kBottomContainerColor,
        backgroundColor: Color(0xFF0A0E21),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            print(index);
            currentPage = index;
            _tabController.animateTo(
              currentPage,
              curve: Curves.easeInOut,
              duration: Duration(
                milliseconds: 600,
              ),
            );
          });
        },
      ),
    );
  }
}
