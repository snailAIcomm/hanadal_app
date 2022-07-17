import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:hanadal_app/screens/shop/home.dart';
import 'package:hanadal_app/screens/shop/nft_mall.dart';
import 'package:hanadal_app/screens/shop/sharing_screen.dart';
import 'package:hanadal_app/screens/shop/wish_list.dart';
import 'package:hanadal_app/screens/shop/my_page.dart';
import 'package:hanadal_app/screens/shop/studio.dart';

class ShopBase extends StatefulWidget {
  const ShopBase({Key? key}) : super(key: key);

  @override
  State<ShopBase> createState() => _ShopBaseState();
}

class _ShopBaseState extends State<ShopBase> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          Home(),
          NFTMall(),
          WishList(),
          MyPage(),
          Studio(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house), label: ''),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.gift), label: ''),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart), label: ''),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), label: ''),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.wandMagicSparkles), label: ''),
        ],
      ),
    );
  }
}
