import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'mainscrn.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('User Login Form')),
            body: Center(child: LoginUser())));
  }
}

class LoginUser extends StatefulWidget {
  static final routeName = '/login';
  LoginUserState createState() => LoginUserState();
}

class LoginUserState extends State {
  // For CircularProgressIndicator.
  bool visible = false;

  // Getting value from TextField widget.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future userLogin() async {
    // Showing CircularProgressIndicator.
    setState(() {
      visible = true;
    });

    // Getting value from Controller
    String email = emailController.text;
    String password = passwordController.text;

    // SERVER LOGIN API URL
    var url = 'http://192.168.43.62/login.php';

    // Store all data with Param Name.
    var data = {'username': email, 'password': password};

    // Starting Web API Call.
    var response = await http.post(url, body: json.encode(data));

    // Getting Server response into variable.
    var message = response.body.toString();

    // If the Response Message is Matched.
    if (message.toString() == 'Login Matched') {
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });

      // Navigate to Profile Screen & Sending Email to Next Screen.
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Mainscrn()));
    } else {
      // If Email or Password did not Matched.
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });

      // Showing Alert Dialog with Response JSON Message.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text(message),
            actions: <Widget>[
              FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
      child: Column(
        children: <Widget>[
          //   Padding(
          //     padding: const EdgeInsets.all(12.0),
          //   child: Text('User Login Form', style: TextStyle(fontSize: 21))),
          Divider(),
          Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: emailController,
                autocorrect: true,
                decoration:
                    InputDecoration(hintText: 'Enter Your Username Here'),
              )),
          Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: passwordController,
                autocorrect: true,
                obscureText: true,
                decoration:
                    InputDecoration(hintText: 'Enter Your Password Here'),
              )),
          RaisedButton(
            onPressed: userLogin,
            color: Colors.green,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
            child: Text('Click Here To Login'),
          ),
          Visibility(
              visible: visible,
              child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: CircularProgressIndicator())),
        ],
      ),
    )));
  }
}
