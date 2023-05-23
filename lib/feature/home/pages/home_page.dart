import 'package:borniak/feature/Explore/pages/explore_page.dart';
import 'package:borniak/feature/Profile/pages/profile_page.dart';
import 'package:borniak/feature/Search/pages/search_page.dart';
import 'package:borniak/feature/favorites/pages/favorites_page.dart';
import 'package:borniak/feature/profile/pages/update_profile_page.dart';
import 'package:borniak/feature/shop/pages/shopping_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ExplorePage(),
    SearchPage(),
    ShoppingPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: GNav(
            onTabChange: _onItemTapped,
            backgroundColor: Colors.white,
            color: Colors.teal,
            activeColor: Colors.teal,
            tabBackgroundColor: Colors.teal.shade100,
            gap: 8,
            padding: const EdgeInsets.all(8),
            tabs: const [
              GButton(
                icon: Icons.explore,
                text: 'Odkrywaj',
              ),
              GButton(
                icon: Icons.search,
                text: 'Szukaj',
              ),
              GButton(
                icon: Icons.shopping_cart_outlined,
                text: 'Zakupy',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
