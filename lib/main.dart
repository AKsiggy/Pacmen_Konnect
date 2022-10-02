import 'package:flutter/material.dart';
import './login.dart';
import './home.dart';
import './live.dart';
import './social.dart';
import './onsale.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Pacmen_Konnect_Project';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: _title,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blueGrey,
      ),
      home: MyLogin(),
      routes: {
        'MyStatefulWidget': (context) => MyStatefulWidget(),
      },
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  Widget _widgetOptions(int index) {
    switch (index) {
      case 0:
        return Home();
        break;
      case 1:
        return live();
        break;
      case 2:
        return Social();
        break;
      case 3:
        return Onsale();
        break;

    }
    return Home();
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pacmen Konnect'),
        actions: [ PopupMenuButton(
          icon: Icon(Icons.menu),  //don't specify icon if you want 3 dot menu
          color: Colors.blue,
          itemBuilder: (context) => [
            PopupMenuItem<int>(
              value: 0,
              child: Text("Account info",style: TextStyle(color: Colors.white),
              ),
            ),
            PopupMenuItem<int>(
              value: 1,
              child: Text("Support",style: TextStyle(color: Colors.white),
              ),
            ),
            PopupMenuItem<int>(
              value: 2,
              child: Text("Logout",style: TextStyle(color: Colors.white),
              ),
            ),
          ],
          onSelected: (item) => SelectedItem(context, item),
        ),
        ],
      ),

      body: Center(
        child: _widgetOptions(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_filled),
            label: 'Live',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger),
            label: 'Social',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            label: 'OnSale',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.lime,
        onTap: _onItemTapped,
      ),
    );
  }
}
void SelectedItem(BuildContext context, item) {
  switch (item) {
    case 0:
      print("Too Much Work Man,i dont have the energy to make a login page");
      break;
    case 1:
      print("Support Clicked");
      break;
    case 2:
      print("User Logged out");
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => MyLogin()),
              (route) => false);
      break;
  }
}





