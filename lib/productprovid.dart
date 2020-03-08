import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Product {
  final int id;
  final String username;
  final String name;
  final String description;
  final int price;
  final String image;
  final String genre;
  Product(
      {this.id,
      this.username,
      this.description,
      this.genre,
      this.price,
      this.image,
      this.name});
  factory Product.fromJson(Map json) {
    print(json["id"]);
    return new Product(
        id: json["id"] as int,
        name: json["name"] as String,
        description: json["description"] as String,
        genre: json["genre"] as String,
        username: json["username"] as String,
        image: json["image"] as String,
        price: json["price"] as int);
  }
}

class Products with ChangeNotifier {
  List<Product> _item = [];

  List<Product> get item {
    return [..._item];
  }

  void getProducts() async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = "CREMAN";

      final response =
          await http.post('http://192.168.43.62/loginn.php', body: map);
      //  print('getEmployees Response: ${response.body}');
      if (200 == response.statusCode) {
        parseProduct(response.body);
        print('helllllo');
        // print(_item);
      } else {
        _item = [];
      }
      notifyListeners();
    } catch (e) {
      _item = [];
      notifyListeners();
    }
  }

  void parseProduct(String responseBody) {
    final parsed = json.decode(responseBody).cast();
    print(parsed);

    List<Product> k = parsed.map((json) => Product.fromJson(json)).toList();
    print('k');
    _item = k;
    print(_item);
    notifyListeners();
    return;
  }

  Future<String> updateProduct(
      {String username,
      String name,
      String description,
      int price,
      int id,
      String image,
      String genre}) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = "PRODUCTEDIT";
      map['name'] = name;
      map['username'] = username;
      map['genre'] = genre;
      map['id'] = id;
      map['image'] = image;
      map['price'] = price;
      map['description'] = description;
      final response =
          await http.post('http://localhost/loginn.php', body: map);
      print('updateEmployee Response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }

// Method to Delete an Employee from Database...
  Future<String> deleteProduct(int id) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = "PRODUCTDEL";
      map['id'] = id;
      final response =
          await http.post('http://localhost/loginn.php', body: map);
      print('deleteEmployee Response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }

  static Future<String> addEmployee(String firstName, String lastName) async {
    try {
      var map = Map<String, dynamic>();
      map['action'] = "ADDPRODUCT";
      map['first_name'] = firstName;
      map['last_name'] = lastName;
      final response =
          await http.post('http://localhost/loginn.php.', body: map);
      print('addEmployee Response: ${response.body}');
      if (200 == response.statusCode) {
        return response.body;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }
}
