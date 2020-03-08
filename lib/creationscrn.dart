import 'package:flutter/material.dart';
import './catcreat.dart';
import 'package:provider/provider.dart';
import 'package:p1/productprovid.dart';

class CreationScrn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create a Website'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Categories',
            style: TextStyle(fontSize: 30, fontFamily: 'Segoe'),
          ),
          SizedBox(
            height: 30,
          ),
          // ListView.builder(),SizedBox(height: 30,),
          Container(
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () =>
                      Navigator.of(context).pushNamed(CategoryAdd.routeName),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
