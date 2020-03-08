import 'package:flutter/material.dart';
import './login1.dart';
import './createdscrn.dart';
import 'productprovid.dart';
import 'package:provider/provider.dart';
import './about.dart';

class Mainscrn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            SizedBox(
              height: 50,
            ),
            FlatButton(
              child: Text(
                'CREATE / MANAGE A WEBSITE',
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 38),
              ),
              onPressed: () {
                Provider.of<Products>(context).getProducts();
                // print(Provider.of<Products>(context).item);
                Navigator.of(context).pushNamed(Categories.routeName);
              },
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              child: Text(
                'LOGOUT',
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 38),
              ),
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed(Login1.routeName),
            ),
          ])),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                'Username  Shopname',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Segoe',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(Login2.routeName),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'How to Use ',
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Segoe',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'About',
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (int selectedValue) =>
                Navigator.of(context).pushReplacementNamed(Login1.routeName),
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Log Out'),
                value: 0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
