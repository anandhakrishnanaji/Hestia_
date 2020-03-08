import 'package:flutter/material.dart';
import 'package:p1/boxwidget.dart';
import 'package:p1/productprovid.dart';
import 'package:provider/provider.dart';

class Genre extends StatelessWidget {
  static final routeName = 'genre.dart';

  @override
  Widget build(BuildContext context) {
    final prod = Provider.of<Products>(context);
    return Scaffold(
      body: ListView.builder(
        itemCount: prod.item.length,
        itemBuilder: (c, index) => ProductBox(),
      ),
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
