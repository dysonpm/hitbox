import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationExample(),
    );
  }
}

// Ein Widget, dass später in der BottomNavigation benutzt wird
class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("This is the HomeScreen Widget");
  }
}

// Beispielcode für das BottomNavigation Widget
class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({super.key});

  @override
  State<BottomNavigationExample> createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  // der derzeit ausgewählte Index
  int _selectedIndex = 0;
  // Eine Liste mit Widgets, welche von der BottomNavigation angezeigt werden können.
  static const List<Widget> _widgetOptions = <Widget>[
    // Hier ist wieder unser eben deklariertes Widget
    HomeScreenWidget(),
    // Ein weiteres Widget, welches nicht extern erstellt wurde
    Text("Widget 2"),
    // Noch ein Widget
    Text("Widget 3"),
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
      // App Bar einstellungen
      appBar: AppBar(
        title: const Text("Bottom Nav Example"),
        backgroundColor: Colors.deepOrange,
      ),
      // Zeige den Body in der Mitte Zentriert an
      body: Center(
        // _widgetoptions ist die eben erstelle Liste mit Widgets
        // Aus dies Liste übergeben wir eine Stelle.
        //Das widget an der Stelle die wir übergeben haben wird angezeigt.
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // Das Hauptwidget der BottomNavigation Bar
      bottomNavigationBar: BottomNavigationBar(
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
            label: 'Code',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Info',
          ),
        ],
        //Der derzeitige Index für die Ausgewählte Schaltfläche (welche von uns mit
        // der _onItemTapped gesteuert wird)
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepOrange,
        // bei der onTap Methode rufen wir unsere Methode auf um den Index zu steuern.
        onTap: _onItemTapped,
      ),
    );
  }
}
