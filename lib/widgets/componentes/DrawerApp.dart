import 'package:biloteca_flutter/screens/dashboardScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const DrawerApp());

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DrawerExample());
  }
}

class DrawerExample extends StatefulWidget {
  const DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  String selectedPage = 'Dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(title: const Text('Bibloteca daora'), backgroundColor: const Color.fromARGB(250, 255, 255, 255),),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.white54),
              child: Text('Menu',
                  style: TextStyle(color: Colors.black87, fontSize: 24)),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text("Dashboard"),
              onTap: () {
                setState(() {
                  selectedPage = "Dashboard";
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
              onTap: () {
                setState(() {
                  selectedPage = 'Profile';
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                setState(() {
                  selectedPage = 'Settings';
                });
              },
            ),
          ],
        ),
      ),
      body: Builder(
        builder: (BuildContext context) {
          if (selectedPage == "Dashboard") {
            return DashboardScreen();
          } else {
            return Text("$selectedPage");
          }
        },
      ),
    );
  }
}
