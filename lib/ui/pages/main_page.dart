import 'package:flutter/material.dart';
import 'package:koraplay/ui/pages/navpages/bar_item_page.dart';
import 'package:koraplay/ui/pages/navpages/home_page.dart';
import 'package:koraplay/ui/pages/navpages/profile_page.dart';
import 'package:koraplay/ui/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  static const routName = '/mainPage';
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const ProfilePage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: BottomNavigationBar(
            unselectedFontSize: 0,
            selectedFontSize: 0,
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            onTap: onTap,
            currentIndex: currentIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey.withOpacity(0.5),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home_filled),
              ),
              BottomNavigationBarItem(
                label: "Bar",
                icon: Icon(
                  Icons.calendar_month,
                ),
              ),
              BottomNavigationBarItem(
                label: "Search",
                icon: Icon(
                  Icons.chat_bubble,
                ),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(
                  Icons.person,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
