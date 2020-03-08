import 'package:flutter/material.dart';
import './prodtextform.dart';

class ProductAdd extends StatelessWidget {
  static final routeName = '/proadd';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.of(context).pushNamed(MyyApp.routeName),
      ),
    );
  }
}
