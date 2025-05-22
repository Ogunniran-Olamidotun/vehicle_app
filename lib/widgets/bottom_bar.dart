import 'package:flutter/material.dart';
import 'package:vehicle_repair_booking_app/Screens/home_screen.dart';
import 'package:vehicle_repair_booking_app/utils/app_styles.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage() ,
    Center(child: Text('Bookings')),
    Center(child: Text('Profile')),
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
        child: _pages[_selectedIndex]
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Styles.primaryColor,
        unselectedItemColor: Colors.grey,
        items:  [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/Home.png',
              width: 24,
              height: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
           icon: Image.asset(
              'assets/icons/Wallet.png',
              width: 24,
              height: 24,
            ),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/headset-help.png',
              width: 24,
              height: 24,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}