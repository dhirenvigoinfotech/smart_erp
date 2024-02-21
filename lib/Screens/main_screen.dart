import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: ListView(
        children: [

          Container(
            height: 75,
            margin: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 5.0,
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                title: const Text('Mark Duty',
                  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                ),
                leading: const Icon(Icons.person),
                onTap: () {},
              ),
            ),
          ),

          const SizedBox(height: 10),

          Container(
            height: 75,
            margin: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 5.0,
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                title: const Text('Field Reporting',
                  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                ),
                leading: const Icon(Icons.map),
                onTap: () {},
              ),
            ),
          ),


          const SizedBox(height: 10),

          Container(
            height: 75,
            margin: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 5.0,
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                title: const Text('Site Reporting',
                  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                ),
                leading: const Icon(Icons.report),
                onTap: () {},
              ),
            ),
          ),


          const SizedBox(height: 10),

          Container(
            height: 75,
            margin: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 5.0,
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                title: const Text('TeamView',
                  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                ),
                leading: const Icon(Icons.people),
                onTap: () {},
              ),
            ),
          ),


          const SizedBox(height: 10),

          Container(
            height: 75,
            margin: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 5.0,
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                title: const Text('Recruitment',
                  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                ),
                leading: const Icon(Icons.read_more),
                onTap: () {},
              ),
            ),
          ),


          const SizedBox(height: 10),

          Container(
            height: 75,
            margin: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 5.0,
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                title: const Text('Sales Management',
                  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                ),
                leading: const Icon(Icons.subdirectory_arrow_left_sharp),
                onTap: () {},
              ),
            ),
          ),


          const SizedBox(height: 10),

          Container(
            height: 75,
            margin: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 5.0,
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                title: const Text('Settings',
                  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                ),
                leading: const Icon(Icons.settings),
                onTap: () {},
              ),
            ),
          ),


        ],
      ),
    );
  }
}
