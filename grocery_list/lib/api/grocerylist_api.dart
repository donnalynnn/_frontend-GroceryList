import 'dart:convert';

import '../constants/constants.dart';
import 'package:http/http.dart' as http;
import '../model/grocerylist_model.dart';

const endpoint = "$baseUrl/grocerylist/";

create(String product) async {
  var uri = Uri.parse("${endpoint}create/");
  Map data = {"body": product};
  var res = await http.post(uri, body: data,);
  // print(res.body);
  // var json = jsonDecode(res.body);
  // print(json);

  if (res.statusCode == 200 || res.statusCode == 201) {
    return true;
  } else {
    return false;
  }
}

Future<List<GroceryList>> getGroceryList() async {
  List<GroceryList> products = [];
  var uri = Uri.parse(endpoint);

  var res = await http.get(uri,);
  // print(res.body);
  // print(json);
  if (res.statusCode == 200) {
    var jsons = jsonDecode(res.body);
    for (var json in jsons) {
      products.add(GroceryList.fromJson(json));
    }
  }
  // print(products);
  return products;
}

Future<GroceryList?> getProduct(int id) async {
  var uri = Uri.parse("$endpoint$id/");

  var res = await http.get(uri,);
  // print(res.body);
  // print(json);
  if (res.statusCode == 200) {
    var json = jsonDecode(res.body);

    return GroceryList.fromJson(json);
  }
  return null;
}

Future<bool> updateProduct(GroceryList prod) async {
  var uri = Uri.parse("$endpoint${prod.id}/update/");

  var res = await http.put(uri, body: prod.toJson(),);
  // print(res.body);
  // print(json);
  if (res.statusCode == 200) {
    // var json = jsonDecode(res.body);

    return true;
  }
  return false;
}

Future<bool> deleteNote(int id) async {
  var uri = Uri.parse("$endpoint$id/delete/");

  var res = await http.delete(uri,);
  // print(res.body);
  // print(json);
  if (res.statusCode == 200 || res.statusCode == 204) {
    // var json = jsonDecode(res.body);

    return true;
  }
  return false;
}