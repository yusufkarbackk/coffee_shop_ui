import 'package:coffee_shop_ui/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/menu.dart';
import 'pages/profile.dart';
import 'widgets/best_menu_card.dart';
import 'widgets/promo_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

int navigationIndex = 0;
final List<Widget> pages = [Home(), Menu(), Profile()];

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: pages[navigationIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: navigationIndex,
            iconSize: 30,
            selectedFontSize: 16,
            backgroundColor: Color(0xff252422),
            selectedLabelStyle: TextStyle(
              decorationColor: Colors.white,
              color: Colors.white,
            ),
            onTap: (index) {
              setState(() {
                navigationIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.storefront_rounded,
                    color: (navigationIndex == 0)
                        ? Color(0xffeb5e28)
                        : Color(0xfffffcf2),
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu_book,
                    color: (navigationIndex == 1)
                        ? Color(0xffeb5e28)
                        : Color(0xfffffcf2),
                  ),
                  label: "Menu",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: (navigationIndex == 2)
                        ? Color(0xffeb5e28)
                        : Color(0xfffffcf2),
                  ),
                  label: "Profile"),
            ],
          ),
        ));
  }
}
