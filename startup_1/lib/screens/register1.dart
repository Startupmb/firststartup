import 'package:flutter/material.dart';
import 'package:startup_1/screens/login.dart';
import 'package:startup_1/screens/Malefemale.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController phoneCodeController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          Container(
            width: 512,
            margin: EdgeInsets.only(
                left: deviceWidth * 0.40,
                top: deviceHeight * 0.04,
                bottom: deviceHeight * 0.02),
            child: Text(
              'Sign Up',
              style: TextStyle(fontSize: deviceHeight * 0.03),
            ),
          ),
          Container(
            width: deviceWidth * 0.8,
            margin: EdgeInsets.only(bottom: deviceHeight * 0.03),
            child: Theme(
              data: Theme.of(context).copyWith(
                accentColor: Colors.red,
              ),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Icon(
                        Icons.account_circle,
                      ),
                    ),
                    hintText: ("User Name"),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                controller: userNameController,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ),
          Container(
            width: deviceWidth * 0.8,
            margin: EdgeInsets.only(bottom: deviceHeight * 0.03),
            child: Theme(
              data: Theme.of(context).copyWith(
                accentColor: Colors.red,
              ),
              child: TextField(
                decoration: InputDecoration(
                    prefixIconConstraints:
                        BoxConstraints(minWidth: 23, maxHeight: 20),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Icon(
                        Icons.email,
                      ),
                    ),
                    hintText: ("Email Address"),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                controller: _email,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ),
          Container(
            width: deviceWidth,
            margin: EdgeInsets.only(
                left: deviceWidth * 0.1, bottom: deviceHeight * 0.03),
            child: Text('Mobile Number'),
          ),
          Row(
            children: [
              Container(
                width: deviceWidth * 0.25,
                height: deviceHeight * 0.08,
                margin: EdgeInsets.only(left: deviceWidth * 0.1),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    accentColor: Colors.red,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIconConstraints:
                            BoxConstraints(minWidth: 23, maxHeight: 20),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 10, left: 5),
                          child: Icon(Icons.flag),
                        ),
                        hintText: ("Code"),
                        hintStyle: TextStyle(
                            color: Colors.grey, fontSize: deviceHeight * 0.015),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    controller: phoneCodeController,
                  ),
                ),
              ),
              Container(
                width: deviceWidth * 0.45,
                height: deviceHeight * 0.08,
                margin: EdgeInsets.only(left: deviceWidth * 0.1),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    accentColor: Colors.red,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIconConstraints:
                            BoxConstraints(minWidth: 23, maxHeight: 20),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 10, left: 5),
                        ),
                        hintStyle: TextStyle(
                            color: Colors.grey, fontSize: deviceHeight * 0.01),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    controller: phoneNumberController,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: deviceWidth * 0.8,
            margin: EdgeInsets.only(
                bottom: deviceHeight * 0.05, top: deviceHeight * 0.03),
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
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Icon(
                        Icons.lock,
                      ),
                    ),
                    hintText: ("Password"),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                controller: passwordController,
                autofocus: true,
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 25),
              child: Container(
                width: deviceWidth * 0.4,
                child: ElevatedButton(
                  child: Text("SIGN UP"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MaleFemaleScreen()),
                    );
                  },
                ),
              )),
          Container(
              padding: EdgeInsets.only(top: deviceHeight * 0.0002),
              child: Row(
                children: <Widget>[
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        fontSize: deviceWidth * 0.035, color: Colors.white),
                  ),
                  TextButton(
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: deviceWidth * 0.035,
                              color: Colors.lightBlueAccent),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ))
        ],
      )),
    );
  }
}
