import 'package:flutter/material.dart';
import './productadd.dart';

class CategoryAdd extends StatefulWidget {
  static final routeName = '/catadd';
  @override
  _CategoryAddState createState() => _CategoryAddState();
}

class _CategoryAddState extends State<CategoryAdd> {
  @override
  TextEditingController category = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.of(context).pushNamed(ProductAdd.routeName),
      ),
      appBar: AppBar(
        title: Text('Add Category'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Add Category',
            style: TextStyle(fontSize: 30),
          ),
          TextField(
            controller: category,
          ),
        ],
      ),
    );
  }
}
