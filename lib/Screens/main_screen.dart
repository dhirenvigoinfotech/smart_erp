import 'package:flutter/material.dart';
import 'package:smart_erp/Screens/field_reporting.dart';
import 'package:smart_erp/Screens/help.dart';
import 'package:smart_erp/Screens/mark_duty.dart';
import 'package:smart_erp/Screens/recruitment.dart';
import 'package:smart_erp/Screens/sales_management.dart';
import 'package:smart_erp/Screens/settings.dart';
import 'package:smart_erp/Screens/site_reporting.dart';
import 'package:smart_erp/Screens/team_view.dart';


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
  ];

  List<void Function(BuildContext)> onTapActions = [
        (context) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const MarkDuty()));
    },
        (context) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const FieldReporting()));
    },
        (context) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const SiteReporting()));
    },
        (context) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const TeamView()));
    },
        (context) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Recruitment()));
    },
        (context) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const SalesManagement()));
    },
        (context) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Settings()));
    },
        (context){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Help()));
    },
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
            child: Card(
              elevation: 5.0,
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(vertical: 11, horizontal: 20),
                title: Text(
                  menuItems[index],
                  style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                leading: Icon(getIconForItem(index)),
              ),
            ),
          );
        },
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
      default:
        return Icons.help;
    }
  }
}
