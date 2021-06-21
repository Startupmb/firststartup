import 'package:flutter/material.dart';
import 'package:startup_1/screens/Login.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Startup',
      home: LoginScreen(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
