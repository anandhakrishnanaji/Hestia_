import 'package:flutter/material.dart';

class MyyApp extends StatefulWidget {
  static final routeName = '/prodaadd';
  MyyApp({Key key}) : super(key: key);

  @override
  _MyyAppState createState() => _MyyAppState();
}

class _MyyAppState extends State<MyyApp> {
//  _formKey and _autoValidate
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String _name;
  String _email;
  String _mobile;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Fill'),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: FormUI(),
            ),
          ),
        ),
      ),
    );
  }

// Here is our Form UI
  Widget FormUI() {
    return new Column(
      children: <Widget>[
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Name'),
          keyboardType: TextInputType.text,
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'price'),
          keyboardType: TextInputType.phone,
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Description'),
          keyboardType: TextInputType.emailAddress,
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Image Link'),
          keyboardType: TextInputType.text,
        ),
        new SizedBox(
          height: 10.0,
        ),
        new RaisedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: new Text('Validate'),
        )
      ],
    );
  }
}
