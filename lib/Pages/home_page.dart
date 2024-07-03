import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pk_folio/Pages/Details/about.dart';
import 'package:pk_folio/Pages/Details/contact.dart';
import 'package:pk_folio/Pages/Details/project.dart';
import 'package:pk_folio/Pages/shrot_info.dart';
import 'package:pk_folio/component/myNavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateTopBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //all my details page
  List<Widget> _pages = [
    AboutPage(),
    ProjectPage(),
    ContactPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: EdgeInsets.all(36),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            // short info
            ShrotInfo(),

            // main content
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Stack(
                  children: [
                    // nav bar

                    _pages[_selectedIndex],
                    Container(
                      margin: EdgeInsets.only(top: 14),
                      child: Mynavbar(
                        onTabChange: (index) => navigateTopBar(index),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
