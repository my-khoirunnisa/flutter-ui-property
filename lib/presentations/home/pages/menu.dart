import 'package:flutter/material.dart';
import 'package:flutter_ui_property/core/constants/colors.dart';
import 'package:flutter_ui_property/presentations/explore/explore_page.dart';
import 'package:flutter_ui_property/presentations/home/pages/home_page.dart';
import 'package:flutter_ui_property/presentations/message/message_page.dart';
import 'package:flutter_ui_property/presentations/profile/profile_page.dart';
import 'package:flutter_ui_property/presentations/wishlist/wishlist_page.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _currentIndex = 0;
  final List _pages = [
    const HomePage(),
    const ExplorePage(),
    const WishlistPage(),
    const MessagePage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: AppColors.black,
        iconSize: 28,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey[500],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
