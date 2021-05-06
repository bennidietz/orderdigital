import 'package:flutter/material.dart';
import 'package:forsat/presentation/Opportunities/opportunities_page.dart';
import 'package:forsat/presentation/auth/account_page.dart';
import 'package:forsat/presentation/favorites/favorites_page.dart';
import 'package:forsat/presentation/forum/questions_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    OpportunitiesPage(),
    QuestionsPage(),
    FavoritesPage(),
    AccountPage()
  ];

  void _onItemTapped(int index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _screens,
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            label: "Opportunities",
            icon: Icon(Icons.home, color: Colors.grey[800],)
          ),
          BottomNavigationBarItem(
              label: "Forum",
              icon: Icon(Icons.chat, color: Colors.grey[800],)
          ),
          BottomNavigationBarItem(
              label: "Favorites",
              icon: Icon(Icons.favorite, color: Colors.grey[800],)
          ),
          BottomNavigationBarItem(
              label: "Account",
              icon: Icon(Icons.person, color: Colors.grey[800],)
          )
        ],
      ),
    );
  }
}
