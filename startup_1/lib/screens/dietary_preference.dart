import 'package:flutter/material.dart';
import 'package:startup_1/screens/workout_frequency.dart';


import 'workout_frequency.dart';

class DietaryScreen extends StatefulWidget {
  @override
  _DietaryScreenState createState() => _DietaryScreenState();
}

class _DietaryScreenState extends State<DietaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Dietary Preference',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(
                  height: 18,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 0.2,
                            offset: Offset(0.3, 0.5),
                            spreadRadius: 0.5)
                      ]),
                  child: ListTile(
                    title: Text('Non-Vegetarian',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    trailing: Container(
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 0.2,
                            offset: Offset(0.3, 0.5),
                            spreadRadius: 0.5)
                      ]),
                  child: ListTile(
                    title: Text('Vegetarian',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    trailing: Container(
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 0.2,
                            offset: Offset(0.3, 0.5),
                            spreadRadius: 0.5)
                      ]),
                  child: ListTile(
                    title: Text('Eggetarian',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    trailing: Container(
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 0.2,
                            offset: Offset(0.3, 0.5),
                            spreadRadius: 0.5)
                      ]),
                  child: ListTile(
                    title: Text('Jain',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    trailing: Container(
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 0.2,
                            offset: Offset(0.3, 0.5),
                            spreadRadius: 0.5)
                      ]),
                  child: ListTile(
                    title: Text('Vegan',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    trailing: Container(
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                MaterialPageRoute(builder: (context) => WorkoutFreqScreen()),
              ),
            },
          )
        ]));
  }
}
