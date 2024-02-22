import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MarkDuty extends StatefulWidget {
  const MarkDuty({Key? key}) : super(key: key);

  @override
  State<MarkDuty> createState() => _MarkDutyState();
}

class _MarkDutyState extends State<MarkDuty> {
  String? inTimestamp;
  String? outTimestamp;

  @override
  Widget build(BuildContext context) {
    String currentDateTime = DateFormat('dd MMM yyyy').format(DateTime.now());
    String currentTime = DateFormat('hh:mm a').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        title: Text('Mark Duty'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(12),
            ),

            child: Column(
              children: [
                const Text(
                  'Current Date and Time:',
                  style: TextStyle(fontSize: 18),
                ),

                SizedBox(height: 10),

                Text(
                  '$currentDateTime / $currentTime',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),


          Expanded(
            child: Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [


              ElevatedButton.icon(
                icon: Icon(Icons.arrow_forward, color: Colors.white),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  fixedSize: MaterialStateProperty.all(const Size(170, 50)),
                ),
                onPressed: () {
                  setState(() {
                    inTimestamp = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
                    print('In Timestamp: $inTimestamp');
                  });
                },
                label: Text('Check In', style: TextStyle(color: Colors.white, fontSize: 18)),
              ),


              ElevatedButton.icon(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  fixedSize: MaterialStateProperty.all(const Size(170, 50)),
                ),
                onPressed: () {
                  setState(() {
                    outTimestamp = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
                    print('Out Timestamp: $outTimestamp');
                  });
                },
                label: Text('Check Out', style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ],
          ),


          SizedBox(height: 10),


          ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              fixedSize: MaterialStateProperty.all(const Size(200, 50)),
            ),
            onPressed: () {},
            icon: Icon(Icons.leave_bags_at_home, color: Colors.white),
            label: Text('Leave', style: TextStyle(color: Colors.white, fontSize: 20)),
          ),


          const SizedBox(height: 10),


          ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange),
              fixedSize: MaterialStateProperty.all(const Size(200, 50)),
            ),
            onPressed: () {},
            icon: Icon(Icons.next_week_outlined, color: Colors.white),
            label: const Text('Week Off', style: TextStyle(color: Colors.white, fontSize: 20)),
          ),


          const SizedBox(height: 20),


        ],
      ),
    );
  }
}
