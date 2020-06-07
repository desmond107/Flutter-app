import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: BankCard()));

class BankCard extends StatefulWidget {
  @override
  _BankCardState createState() => _BankCardState();
}

class _BankCardState extends State<BankCard> {
  int bankLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        title: Text('Bank id card'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 20.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            bankLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/face_sketch_cool_pose_by_vimes_da-d4bihhy-copy.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.black,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Desmond',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Current level',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              '$bankLevel',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.cyan,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'desmond@gmail.com',
                  style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
