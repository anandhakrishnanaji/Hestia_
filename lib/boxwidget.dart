import 'package:flutter/material.dart';
import 'productprovid.dart';
import 'package:provider/provider.dart';

class ProductBox extends StatelessWidget {
  final id;
  final name;
  final price;
  final username;
  final description;
  final image;
  final genre;

  ProductBox(
      {this.username,
      this.name,
      this.description,
      this.price,
      this.id,
      this.image,
      this.genre});
  @override
  Widget build(BuildContext context) {
    final prod = Provider.of<Products>(context);
    return ListTile(
      leading: CircleAvatar(
        child: GestureDetector(onTap: () {}, child: Image.network(image)),
        radius: 15,
      ),
      title: Text(name),
      subtitle: Text(price),
      trailing: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () => prod.updateProduct(
                description: description,
                id: id,
                name: name,
                image: image,
                genre: genre,
                price: price,
                username: username),
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => prod.deleteProduct(id),
          )
        ],
      ),
    );
  }
}
