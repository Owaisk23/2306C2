import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:firstproj/drawerSide.dart' as drawerSide;
import 'package:http/http.dart' as http;

class ApiProduct extends StatefulWidget {
  const ApiProduct({ Key? key }) : super(key: key);

  @override
  _ApiProductState createState() => _ApiProductState();
}

class _ApiProductState extends State<ApiProduct> {
  Future<void> getProducts() async{
    var url = Uri.parse('https://dummyjson.com/products');
    var response = await http.get(url);
    print(response.body);

    return jsonDecode(response.body);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Product Fetching"),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      drawer: drawerSide.DrawerSide(),
      body: FutureBuilder(
        future: getProducts(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            var data = snapshot.data as Map<String, dynamic>;
            var products = data['products'] as List<dynamic>;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index){
                var product = products[index];
                return Card(
                  child: ListTile(
                    title: Text(product['title']),
                    subtitle: Text("Price: \$${product['price']}"),
                    trailing: Text(product['category']),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(product['thumbnail']),
                      radius: 30,
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}