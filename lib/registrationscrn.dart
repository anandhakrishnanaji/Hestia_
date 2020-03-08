import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  static final routeName = '/regscrn';
  static final form = GlobalKey<FormState>();

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController uname = TextEditingController();
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController shopname = TextEditingController();
  TextEditingController pno = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  static Future addEmployee(
      {String fullName,
      String lastName,
      String username,
      String shopnamee,
      int phoneno,
      String password,
      String emaill}) async {
  //  print(fullName);
    try {
      var map = {
        'fname': fullName,
        'lname': lastName,
        'username': username,
        'shopname': shopnamee,
        'mobile': phoneno,
        'password': password,
        'email': emaill
      };
      var response =
          await http.post('http://192.168.43.62/register.php', body: map);
      print(response.body);
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }

  // void saveform() {
  // MyHomePage.form.currentState.save();
  //}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Sign Up'),
      ),
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: MyHomePage.form,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  new TextFormField(
                    controller: uname,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.account_circle),
                      hintText: 'Enter your username',
                      labelText: 'Username',
                    ),
                  ),
                  new TextFormField(
                    controller: fname,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your first name',
                      labelText: 'First Name',
                    ),
                  ),
                  new TextFormField(
                    controller: lname,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.calendar_today),
                      hintText: 'Enter your last name',
                      labelText: 'Last Name',
                    ),
                  ),
                  new TextFormField(
                    controller: shopname,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.shopping_cart),
                      hintText: 'Enter your Shop name',
                      labelText: 'Store name',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  new TextFormField(
                    controller: pno,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter a phone number',
                      labelText: 'Phone',
                    ),
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),
                  new TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter a email address',
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  new TextFormField(
                    controller: password,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter password',
                      labelText: 'Password',
                    ),
                  ),
                  new Container(
                      padding: const EdgeInsets.only(top: 20.0, left: 250),
                      child: new FlatButton(
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(fontSize: 25, color: Colors.purple),
                        ),
                        onPressed: () {
                          //   saveform();

                          String username = uname.text;
                          String fullname = fname.text;
                          String lastname = lname.text;
                          String emailad = email.text;
                          String shopnamee = shopname.text;
                          int phoneno = int.parse(pno.text);
                          String pass = password.text;
                          addEmployee(
                              username: username,
                              fullName: fullname,
                              lastName: lastname,
                              emaill: emailad,
                              shopnamee: shopnamee,
                              phoneno: phoneno,
                              password: pass);
                        },
                      )),
                ],
              ))),
    );
  }
}
