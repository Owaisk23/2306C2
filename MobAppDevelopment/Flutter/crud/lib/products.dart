import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({ Key? key }) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var products = FirebaseFirestore.instance.collection('products');
  // delete product function
  void deleteProduct(String id) async {
    print(id);
    try {
      await products.doc(id).delete();
      print("Product deleted");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Product deleted"),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red,
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/add");
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: StreamBuilder(
          stream: products.snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var productList = snapshot.data!.docs;
              return ListView.builder(
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(productList[index]['title']),
                    subtitle: Text(productList[index]['description']),
                    leading: CircleAvatar(
                      child: Image.memory(
                        base64Decode(productList[index]['image']),
                        height: 40,
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            Map<String, dynamic> productDetails = {
                              'id': productList[index].id,
                              'title': productList[index]['title'],
                              'description': productList[index]['description'],
                              'price': productList[index]['price'],
                              'image': productList[index]['image'],
                            };
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailScreen(productDetails)));
                          },
                          icon: Icon(Icons.info),
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                        IconButton(
                          onPressed: () {
                            deleteProduct(productList[index].id);
                          },
                          icon: Icon(Icons.delete, color: Colors.red),
                        ),
                      ],
                    ),
                  );
                },
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
