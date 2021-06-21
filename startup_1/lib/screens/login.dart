import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:startup_1/screens/register1.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  LoginPage createState() => LoginPage();
}

class LoginPage extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: const <Widget>[
                Text('Startup'),
              ],
            ),
            Container(width: 512, margin: EdgeInsets.all(deviceHeight * 0.1)),
            Container(
              width: 256,
              margin: const EdgeInsets.only(bottom: 8),
              child: Theme(
                data: Theme.of(context).copyWith(
                  accentColor: Colors.red,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIconConstraints:
                        BoxConstraints(minWidth: 23, maxHeight: 20),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.email,
                      ),
                    ),
                    hintText: ("Email Address"),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            Container(
              width: 256,
              margin: const EdgeInsets.only(bottom: 8),
              child: Theme(
                data: Theme.of(context).copyWith(
                  accentColor: Colors.red,
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIconConstraints:
                        BoxConstraints(minWidth: 23, maxHeight: 20),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.lock,
                      ),
                    ),
                    hintText: ("Password"),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  controller: passwordController,
                  autofocus: true,
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 25),
                child: Container(
                  width: 256,
                  margin: const EdgeInsets.only(bottom: 8),
                  child: ElevatedButton(
                    child: Text("SIGN IN"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                )),
            Container(),
            Container(
                padding: EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white, width: 2)),
                      child: IconButton(
                          icon: FaIcon(FontAwesomeIcons.facebookF),
                          iconSize: 30,
                          onPressed: () {}),
                    ),
                    Container(
                      child: Padding(padding: EdgeInsets.only(right: 30)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white, width: 2)),
                      child: IconButton(
                          icon: FaIcon(FontAwesomeIcons.googlePlusG),
                          iconSize: 30,
                          onPressed: () {}),
                    ),
                  ],
                )),
            Container(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontSize: deviceWidth * 0.035, color: Colors.white),
                    ),
                    TextButton(
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: deviceWidth * 0.035,
                                color: Colors.lightBlueAccent),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()),
                        );
                      },
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
          ],
        ),
      ),
    );
  }
}
