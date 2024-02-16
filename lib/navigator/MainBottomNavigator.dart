import 'package:flutter/material.dart';
import 'package:hitbox_main/screens/navscreens/analysisscreen.dart';
import 'package:hitbox_main/screens/navscreens/explorescreen.dart';
import 'package:hitbox_main/screens/navscreens/homescreen.dart';
import 'package:hitbox_main/screens/navscreens/profilscreen.dart';

// Beispielcode für das BottomNavigation Widget
class MainBottomNavigator extends StatefulWidget {
  const MainBottomNavigator({super.key});

  @override
  State<MainBottomNavigator> createState() => _MainBottomNavigatorState();
}

class _MainBottomNavigatorState extends State<MainBottomNavigator> {
  // der derzeit ausgewählte Index
  int _selectedIndex = 0;
  // Eine Liste mit Widgets, welche von der BottomNavigation angezeigt werden können.
  static const List<Widget> _widgetOptions = <Widget>[
    // Hier ist wieder unser eben deklariertes Widget
    HomeScreen(),
    // Ein weiteres Widget, welches nicht extern erstellt wurde
    ExploreScreen(),
    // Noch ein Widget
    AnalysisScreenWidget(),
    ProfilScreenWidget(),
  ];
  // Die funktion welche bei onTap aufgerufen wird (sehr ähnlich zu dem Counter
  // Standart Flutter App welchen wir neulich besprochen haben.)
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // Zeige den Body in der Mitte Zentriert an
      body: Center(
        // _widgetoptions ist die eben erstelle Liste mit Widgets
        // Aus dies Liste übergeben wir eine Stelle.
        //Das widget an der Stelle die wir übergeben haben wird angezeigt.
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // Das Hauptwidget der BottomNavigation Bar
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        // Die Verschiedenen Schaltflächen in der Bar
        // Hier könnte man auch noch weitere hinzufügen.
        items: const <BottomNavigationBarItem>[
          // Jede Schaltfläche in der Bar ist ein "BottomNavigationBarItem"
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_sharp),
            label: 'Analyse',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Info',
          ),
        ],
        //Der derzeitige Index für die Ausgewählte Schaltfläche (welche von uns mit
        // der _onItemTapped gesteuert wird)
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        // bei der onTap Methode rufen wir unsere Methode auf um den Index zu steuern.
        onTap: _onItemTapped,
      ),
    );
  }
}
