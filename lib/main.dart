import 'package:flutter/material.dart';
import 'package:p1/login.dart';
import 'package:p1/productprovid.dart';
import './login1.dart';
import './registrationscrn.dart';
import 'package:provider/provider.dart';
import './createdscrn.dart';
import 'catcreat.dart';
import './productadd.dart';
import './prodtextform.dart';
import 'about.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: Products()),
        ],
        child: MaterialApp(
          title: 'Shop',
          routes: {
            '/': (ctx) => Login1(),
            LoginUser.routeName: (ctx) => LoginUser(),
            MyHomePage.routeName: (ctx) => MyHomePage(),
            Login1.routeName: (ctx) => Login1(),
            Categories.routeName: (ctx) => Categories(),
            CategoryAdd.routeName: (ctx) => CategoryAdd(),
            ProductAdd.routeName: (ctx) => ProductAdd(),
            MyyApp.routeName: (ctx) => MyyApp(),
            Login2.routeName: (ctx) => Login2(),
          },
          theme: ThemeData(
              primarySwatch: Colors.purple,
              accentColor: Colors.amber,
              fontFamily: 'Segoe'),
        ));
  }
}
