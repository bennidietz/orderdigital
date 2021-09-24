import 'package:flutter/material.dart';
import 'package:orderdigital/presentation/pages/dashboard_subpage/page_drinks.dart';
import 'package:orderdigital/presentation/pages/dashboard_subpage/page_menu.dart';
import 'package:orderdigital/utils/constants.dart';

class PageRestaurantDashboard extends StatefulWidget {
  const PageRestaurantDashboard({Key? key}) : super(key: key);

  @override
  State<PageRestaurantDashboard> createState() =>
      _PageRestaurantDashboardState();
}

class _PageRestaurantDashboardState extends State<PageRestaurantDashboard> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    PageDrinks(),
    PageMenu(),
    Center(
      child: Text(
        'Dies ist die Seite für meine Bestellungen',
      ),
    ),
    Center(
      child: Text(
        'Hier kommen mehr Optionen für den User hin',
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant A'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            label: 'Drinks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Essen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_sharp),
            label: 'Bestellung',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Mehr',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kColorPrimary,
        unselectedItemColor: kColorLightBlack,
        onTap: _onItemTapped,
      ),
    );
  }
}
