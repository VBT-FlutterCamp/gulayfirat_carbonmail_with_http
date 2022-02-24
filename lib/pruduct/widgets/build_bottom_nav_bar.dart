import 'package:carbon_email/feature/home_page/view/home_page.dart';
import 'package:carbon_email/pruduct/companents/colors/app_colors.dart';
import 'package:carbon_email/pruduct/companents/text/app_text_strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../feature/other_page/other_page.dart';
import '../../feature/settings_page/settings_page.dart';

class BuildBottomNavBar extends StatefulWidget {
  const BuildBottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BuildBottomNavBar> {
  int? _selectedIndex;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SettingsPage(),
    OtherPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColor.backgroundColor,
          body: _widgetOptions.elementAt(_selectedIndex ?? 0),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.folder_rounded),
                  label: AppTextString.folderLabelText),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: AppTextString.settingsLabelText),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.waveSquare),
                  label: AppTextString.otherLabelText),
            ],
            currentIndex: _selectedIndex ?? 0,
            selectedItemColor: AppColor.buttomNavBarIconColor,
            onTap: _onItemTapped,
          )),
    );
  }
}
