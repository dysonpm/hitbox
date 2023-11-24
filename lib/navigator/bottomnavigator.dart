import 'package:flutter/material.dart';
import 'package:hitbox_main/screens/explorescreen.dart';
import 'package:hitbox_main/screens/homescreen.dart';

// Beispielcode für das BottomNavigation Widget
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  // der derzeit ausgewählte Index
  int _selectedIndex = 0;
  // Eine Liste mit Widgets, welche von der BottomNavigation angezeigt werden können.
  static const List<Widget> _widgetOptions = <Widget>[
    // Hier ist wieder unser eben deklariertes Widget
    HomeScreenWidget(),
    // Ein weiteres Widget, welches nicht extern erstellt wurde
    ExploreScreenWidget(),
    // Noch ein Widget
    Text("Widget 3"),
    Text("Widget 4"),
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
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        // Die Verschiedenen Schaltflächen in der Bar
        // Hier könnte man auch noch weitere hinzufügen.
        items: const <BottomNavigationBarItem>[
          // Jede Schaltfläche in der Bar ist ein "BottomNavigationBarItem"
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: '4',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Info',
          ),
        ],
        //Der derzeitige Index für die Ausgewählte Schaltfläche (welche von uns mit
        // der _onItemTapped gesteuert wird)
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        // bei der onTap Methode rufen wir unsere Methode auf um den Index zu steuern.
        onTap: _onItemTapped,
      ),
    );
  }
}
