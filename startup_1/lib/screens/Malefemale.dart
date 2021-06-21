import 'package:flutter/material.dart';
import 'package:startup_1/screens/height.dart';

class MaleFemaleScreen extends StatefulWidget {
  @override
  _MaleFemaleScreenState createState() => _MaleFemaleScreenState();
}

class _MaleFemaleScreenState extends State<MaleFemaleScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Row(
              children: [
                Text(
                  'Your Gender',
                  style: TextStyle(
                      fontSize: deviceWidth * 0.06,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            actions: [
              TextButton(
                child: Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: deviceWidth * 0.035,
                      color: Colors.lightBlueAccent),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MaleFemaleScreen()),
                  );
                },
              )
            ]),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 512,
                margin: EdgeInsets.only(bottom: deviceHeight * 0.001)),
            Row(
              children: [
                Container(
                  width: deviceWidth * 0.25,
                ),
                TextButton(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Male",
                        style: TextStyle(
                            fontSize: deviceWidth * 0.08, color: Colors.white),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MaleFemaleScreen()),
                    );
                  },
                ),
                Container(
                  width: 1,
                  height: deviceHeight * 0.06,
                  color: Colors.grey,
                ),
                TextButton(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Female",
                        style: TextStyle(
                            fontSize: deviceWidth * 0.08, color: Colors.white),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MaleFemaleScreen()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
            width: 1,
          ),
          FloatingActionButton(
            child: Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {},
          ),
          SizedBox(
            width: 200,
          ),
          FloatingActionButton(
            child: Icon(Icons.arrow_forward_ios_rounded),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HeightScreen()),
              ),
            },
          )
        ]));
  }
}
