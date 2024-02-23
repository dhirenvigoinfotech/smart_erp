import 'package:flutter/material.dart';
import 'package:smart_erp/TeamView/map_view.dart';
import 'package:smart_erp/TeamView/mark_duty.dart';
import 'package:smart_erp/TeamView/recruitment.dart';
import 'package:smart_erp/TeamView/sales_management.dart';
import 'package:smart_erp/TeamView/visitor_management.dart';

import '../TeamView/field_reporting.dart';

class TeamView extends StatefulWidget {
  const TeamView({super.key});

  @override
  State<TeamView> createState() => _TeamViewState();
}

class _TeamViewState extends State<TeamView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TeamView'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'DASHBOARD'),
              Tab(text: 'TEAM ACTIVITY')
            ],
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 8),
            Expanded(
              child: TabBarView(
                children: [
                  _dashboardTab(),
                  _teamActivityTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dashboardTab() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTable('Attendance List', ['Total EMP', 'Present', 'Late', 'Absent'], [
            [30, 20, 15, 35],
          ],[Colors.blue]),
          _buildTable('Field Reporting', ['Total EMP', 'Done', 'Not Done'], [
            [40, 30, 30],
            // Add more rows if needed
          ],[Colors.red]),
          _buildTable('Site Reporting', ['Total EMP', 'Done', 'Note Done'], [
            [25, 45, 30],
            // Add more rows if needed
          ],[Colors.green]),
        ],
      ),
    );
  }

  Widget _buildTable(String title, List<String> columnTitles, List<List<double>> data, List<Color> fontColors) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Table(
              border: TableBorder.all(),
              columnWidths: {
                for (int i = 0; i < columnTitles.length; i++)
                  i: const FlexColumnWidth(1), // Adjust column width as needed
              },
              children: [
                TableRow(
                  children: List.generate(
                    columnTitles.length,
                        (index) => TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          columnTitles[index],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                for (int i = 0; i < data.length; i++)
                  TableRow(
                    children: List.generate(
                      data[i].length,
                          (j) => TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            data[i][j].toString(),
                            style: TextStyle(color: fontColors[i]),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget _teamActivityTab() {
    List<String> teamActivityItems = [
      'Mark Duty',
      'Field Reporting',
      'Site Reporting',
      'Recruitment',
      'Sales Management',
      'Visitor Management',
      'Map View',
    ];

    List<void Function(BuildContext)> teamActivityActions = [
          (context) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const TeamViewMarkDuty()));
      },
          (context) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const TeamViewFieldReporting()));
      },
          (context) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const TeamViewSalesManagement()));
      },
          (context) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const TeamViewRecruitment()));
      },
          (context) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const TeamViewSalesManagement()));
      },
          (context) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const TeamViewVisitorManagement()));
      },
          (context) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const TeamViewMapView()));
      },
    ];

    return ListView.builder(
      itemCount: teamActivityItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5.0,
          margin: const EdgeInsets.all(8.0),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
            title: Text(
              teamActivityItems[index],
              style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            leading: Icon(getIconForTeamActivityItem(index)),
            onTap: () {
              teamActivityActions[index](context);
            },
          ),
        );
      },
    );
  }

  IconData getIconForTeamActivityItem(int index) {
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
        return Icons.filter_alt_rounded;
      case 5:
        return Icons.person_add_alt_rounded;
      default:
        return Icons.zoom_in_map;
    }
  }
}