import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_1/Modal/CatalogModal.dart';
import 'package:http/http.dart' as http;
import 'Drawer/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> products = [];

  Future<List<Product>> getData() async {
    final respose = await http.get(Uri.parse('https://dummyjson.com/products'));

    var data = jsonDecode(respose.body.toString());

    if (respose.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        products.add(Product.fromJson(index));
      }
      return products;
    } else {
      return products;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        actions: <Widget>[],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 10,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          getText(index, 'ID: ', products[index].id.toString()),
                          getText(index, 'Name: ',
                              products[index].title.toString()),
                          getText(index, 'Description: ',
                              products[index].description.toString()),
                          getText(index, 'Price: ',
                              products[index].price.toString()),
                          getText(index, 'DiscountPercentage:',
                              products[index].discountPercentage.toString()),
                          getText(index, 'Rating: ',
                              products[index].rating.toString()),
                          getText(index, 'Stock : ',
                              products[index].stock.toString()),
                          getText(index, 'Brand: ',
                              products[index].brand.toString()),
                          getText(index, 'Category: ',
                              products[index].category.toString()),
                        ]),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
      ),
    );
  }

  Text getText(int index, String fieldName, String content) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: fieldName,
            style: (const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
          ),
          TextSpan(
            text: content,
            style: (const TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
