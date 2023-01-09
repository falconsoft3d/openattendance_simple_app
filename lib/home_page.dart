import 'package:flutter/material.dart';
import 'package:openattendance_simple_app/screens/home_screen.dart';
import 'package:openattendance_simple_app/screens/list_screen.dart';
import 'package:openattendance_simple_app/screens/account_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;

  void _navigateBottombar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomeScreen(),
    ListScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body : _pages[_selectedIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottombar,
          items:  [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: AppLocalizations.of(context)!.home,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.calendar_month),
              label: AppLocalizations.of(context)!.list,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: AppLocalizations.of(context)!.account,
            ),
          ],
        )

    );
  }
}