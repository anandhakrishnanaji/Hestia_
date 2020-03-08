import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:p1/productprovid.dart';
import 'catcreat.dart';

class Categories extends StatelessWidget {
  static final routeName = '/createdscrn';
  @override
  Widget build(BuildContext context) {
    final prod = Provider.of<Products>(context);

    //var distinctIds = ids[''].toSet().toList();
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () =>
              Navigator.of(context).pushNamed(CategoryAdd.routeName),
        ),
        appBar: AppBar(
          title: Text('Create / Manage Product'),
        ),
        body: (prod.item.length <= 0)
            ? Text(
                'No Categories Added',
                style: TextStyle(fontSize: 30),
              )
            : ListView.builder(
                itemCount: prod.item.length,
                itemBuilder: (ctx, index) => ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  //  title: prod.item[index].genre,
                  trailing: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => Navigator.of(context)
                            .pushNamed(CategoryAdd.routeName),
                      )
                    ],
                  ),
                ),
              ));
  }
}
