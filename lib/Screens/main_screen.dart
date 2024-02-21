import 'package:flutter/material.dart';
import '../Authentication/login_screen.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> menuItems = [
    'Mark Duty',
    'Field Reporting',
    'Site Reporting',
    'TeamView',
    'Recruitment',
    'Sales Management',
    'Settings',
    'Help',
    'Time',
    'Date'
  ];

  List<void Function(BuildContext)> onTapActions = [
        (context) {
      print('Mark Duty tapped');
      Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginPage()));
    },
        (context) {
      print('Field Reporting tapped');
    },
        (context) {
      print('Site Reporting tapped');
    },
        (context) {
      print('TeamView tapped');
    },
        (context) {
      print('Recruitment tapped');
    },
        (context) {
      print('Sales Management tapped');
    },
        (context) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
      print('Settings tapped');
    },
        (context){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
      print('Help Tapped');
    },
        (context){
      print('Time Tapped');
        },
        (context){
      print('Date Tapped');
        }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onTapActions[index](context);
            },
            child: Container(
              height: 75,
              margin: const EdgeInsets.all(8.0),
              child: Material(
                borderRadius: BorderRadius.circular(12.0),
                elevation: 5.0,
                child: ListTile(
                  contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  title: Text(
                    menuItems[index],
                    style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(getIconForItem(index)),
                ),
              ),
            ),
          );},
      ),
    );
  }

  IconData getIconForItem(int index) {
    switch (index) {
      case 0:
        return Icons.person;
      case 1:
        return Icons.map;
      case 2:
        return Icons.report;
      case 3:
        return Icons.people;
      case 4:
        return Icons.read_more;
      case 5:
        return Icons.subdirectory_arrow_left_sharp;
      case 6:
        return Icons.settings;
      case 7:
        return Icons.help;
      case 8:
        return Icons.access_time;
      default:
        return Icons.calendar_month;
    }
  }
}
