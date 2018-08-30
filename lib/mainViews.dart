import 'package:flutter/material.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';

class MainViews extends StatefulWidget {
  MainViews({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainViewsState createState() => _MainViewsState();
}

class _MainViewsState extends State<MainViews> {

  // List of bottom navigation bar items
  List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    BottomNavigationBarItem(
        icon: Icon(GroovinMaterialIcons.code_tags),
        title: Text("Current"),
        backgroundColor: Colors.indigo
    ),
    BottomNavigationBarItem(
      icon: Icon(GroovinMaterialIcons.arrow_left_bold_circle_outline),
      title: Text("Previous"),
      backgroundColor: Colors.indigo
    ),
    BottomNavigationBarItem(
      icon: Icon(GroovinMaterialIcons.new_box),
      title: Text("Upcoming"),
      backgroundColor: Colors.indigo
    ),
    BottomNavigationBarItem(
      icon: Icon(GroovinMaterialIcons.calendar_question),
      title: Text("Upcoming"),
      backgroundColor: Colors.indigo
    ),
  ];

  PageController _pageController;

  // Navigate pages based on bottom navigation bar item tap
  void navigationTapped(int page) {
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  int _page = 0; // Track which page is in view

  // handles when the page changes
  void _onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView(
        onPageChanged: _onPageChanged,
        controller: _pageController,
        children: <Widget>[
          // Placeholder widgets:
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavigationBarItems,
        currentIndex: _page,
        onTap: navigationTapped,
      ),
    );
  }
}
