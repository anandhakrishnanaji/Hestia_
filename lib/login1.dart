import 'package:flutter/material.dart';
import './login.dart';
import './registrationscrn.dart';

class Login1 extends StatelessWidget {
  static final routeName = '/';
  Widget quote(
    String text,
  ) {
    return Container(
        padding: EdgeInsets.only(top: 55),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ));
  }

  Widget photo(
    String link,
  ) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: Image.network(link),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShopEazy'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Image.asset('assets/images/logopng.png'),
          SizedBox(
            height: 30,
          ),
          Material(
            color: Colors.purple,
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            //color: Color(0xff01A0C7),
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed((LoginUser.routeName)),
              child: Text("Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 20),
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.purple,
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed((MyHomePage.routeName)),
              child: Text("Sign Up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              photo('https://i.dlpng.com/static/png/6859105_preview.png'),
              quote(
                  'Money making now made easier.Easily monitize your products'),
              photo(
                  'https://www.kindpng.com/picc/m/476-4763522_24-7-vector-png-transparent-png.png'),
              quote('24 x 7 Service available'),
              photo(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ4Q2aFrOADTEhE9Y3LdbfhgcOyMyFqqTKhVy0jBVn4d4a63zyv'),
              quote('Cent percent security to ypur valuable data'),
              photo('https://img.icons8.com/ios/500/easy.png'),
              quote('Easier than easy to use'),
              photo(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRmRkkfpgVKgt27rxioCDGJVpIxF_r8sRPRmHFalCecbncD9tia'),
              quote('Rush free ordering facility to your Customers'),
              Container(
                color: Colors.grey.withOpacity(0.5),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Contact us on:',
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.copyright),
                        Text('ShopEazy 2020')
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
