// import 'dart:convert';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_crud/productDetailScreen.dart';
// import 'package:flutter/material.dart';

// class Products extends StatefulWidget {
//   const Products({Key? key}) : super(key: key);

//   @override
//   _ProductsState createState() => _ProductsState();
// }

// class _ProductsState extends State<Products> {
//   var products = FirebaseFirestore.instance.collection('products');
//   // delete product function
//   void deleteProduct(String id) async {
//     print(id);
//     try {
//       await products.doc(id).delete();
//       print("Product deleted");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text("Product deleted"),
//           duration: Duration(seconds: 2),
//           backgroundColor: Colors.red,
//         ),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text(e.toString()),
//           duration: Duration(seconds: 2),
//           backgroundColor: Colors.red,
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.pushNamed(context, "/add");
//             },
//             icon: Icon(Icons.add),
//           ),
//         ],
//       ),
//       body: Center(
//         child: StreamBuilder(
//           stream: products.snapshots(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               var productList = snapshot.data!.docs;
//               return ListView.builder(
//                 itemCount: productList.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(productList[index]['title']),
//                     subtitle: Text(productList[index]['description']),
//                     leading: CircleAvatar(
//                       child: Image.memory(
//                         base64Decode(productList[index]['image']),
//                         height: 40,
//                       ),
//                     ),
//                     trailing: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         IconButton(
//                           onPressed: () {
//                             Map<String, dynamic> productDetails = {
//                               'id': productList[index].id,
//                               'title': productList[index]['title'],
//                               'description': productList[index]['description'],
//                               'price': productList[index]['price'],
//                               'image': productList[index]['image'],
//                             };
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailScreen(productDetails)));
//                           },
//                           icon: Icon(Icons.info),
//                         ),
//                         IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
//                         IconButton(
//                           onPressed: () {
//                             deleteProduct(productList[index].id);
//                           },
//                           icon: Icon(Icons.delete, color: Colors.red),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               );
//             } else {
//               return CircularProgressIndicator();
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
import 'dart:convert';
import 'dart:typed_data';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Management',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Products(),
      // Add your routes here if needed, e.g.,
      // routes: { "/add": (context) => AddProductScreen() },
    );
  }
}

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final CollectionReference products = FirebaseFirestore.instance.collection(
    'products',
  );
  final TextEditingController searchController = TextEditingController();

  bool isSearching = false;
  List<DocumentSnapshot> searchResults = [];

  // Delete product function
  void deleteProduct(String id) async {
    try {
      await products.doc(id).delete();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Product deleted"),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red,
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          duration: const Duration(seconds: 2),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  // Edit product function
  void editProduct(Map<String, dynamic> productDetails) {
    showDialog(
      context: context,
      builder: (context) {
        TextEditingController titleController = TextEditingController(
          text: productDetails['title'],
        );
        TextEditingController desController = TextEditingController(
          text: productDetails['description'],
        );
        TextEditingController priceController = TextEditingController(
          text: productDetails['price'].toString(),
        );

        String imgUrl = productDetails['image'];

        final ImagePicker picker = ImagePicker();

        getImage() async {
          final XFile? image = await picker.pickImage(
            source: ImageSource.gallery,
          );
          if (image != null) {
            final Uint8List byteImage = await image.readAsBytes();
            final String base64img = base64Encode(byteImage);
            setState(() {
              imgUrl = base64img;
            });
          }
        }

        return AlertDialog(
          title: Text("Edit product: ${productDetails['title']}"),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    labelText: "Title",
                    hintText: "Enter the title of the product",
                  ),
                ),
                TextField(
                  controller: desController,
                  decoration: const InputDecoration(
                    labelText: "Description",
                    hintText: "Enter the description of the product",
                  ),
                ),
                TextField(
                  controller: priceController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                    labelText: "Price",
                    hintText: "Enter the price of the product",
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: getImage,
                  child: const Text("Choose File"),
                ),
                const SizedBox(height: 10),
                imgUrl.isNotEmpty
                    ? Image.memory(base64Decode(imgUrl), height: 100)
                    : Container(),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                try {
                  double price = double.parse(priceController.text);
                  products
                      .doc(productDetails['id'])
                      .update({
                        'title': titleController.text,
                        'description': desController.text,
                        'price': price,
                        'image': imgUrl,
                      })
                      .then((value) {
                        titleController.clear();
                        desController.clear();
                        priceController.clear();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Product updated successfully ✔",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.purple,
                          ),
                        );
                        Navigator.pop(context);
                      });
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Invalid price entered"),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: const Text("Update"),
            ),
          ],
        );
      },
    );
  }

  // Search products function
  void searchProducts() async {
    String query = searchController.text.trim().toLowerCase();
    if (query.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please enter a search query"),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    var result =
        await products
            .where('title', isGreaterThanOrEqualTo: query)
            .where('title', isLessThanOrEqualTo: query + '\uf8ff')
            //apply multiple fields search
            // .limit(3)
            .get();

    setState(() {
      isSearching = true;
      searchResults = result.docs;
    });

    if (result.docs.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("No products found"),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  // Clear search and show all products
  void clearSearch() {
    setState(() {
      isSearching = false;
      searchController.clear();
      searchResults.clear();
    });
  }

  Widget buildProductTile(DocumentSnapshot product) {
    var productDetails = {
      'id': product.id,
      'title': product['title'],
      'description': product['description'],
      'price': product['price'],
      'image': product['image'],
    };

    return ListTile(
      title: Text(product['title']),
      subtitle: Text(product['description']),
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        child:
            product['image'] != null && product['image'].toString().isNotEmpty
                ? Image.memory(base64Decode(product['image']), height: 40)
                : const Icon(Icons.image_not_supported),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              editProduct(productDetails);
            },
            icon: const Icon(Icons.edit, color: Colors.blue),
          ),
          IconButton(
            onPressed: () {
              deleteProduct(product.id);
            },
            icon: const Icon(Icons.delete, color: Colors.red),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/add");
              // You can implement the add product screen separately.
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Search bar + buttons
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      labelText: "Type to search products",
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (value) {
                      searchProducts();
                    },
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: searchProducts,
                  child: const Text("Search"),
                ),
                const SizedBox(width: 8),
                if (isSearching)
                  ElevatedButton(
                    onPressed: clearSearch,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    child: const Text("Clear"),
                  ),
              ],
            ),
            const SizedBox(height: 10),

            // Products list (search results or full list)
            Expanded(
              child:
                  isSearching
                      ? searchResults.isNotEmpty
                          ? ListView.builder(
                            itemCount: searchResults.length,
                            itemBuilder: (context, index) {
                              return buildProductTile(searchResults[index]);
                            },
                          )
                          : const Center(child: Text("No products found"))
                      : StreamBuilder<QuerySnapshot>(
                        stream: products.snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          if (snapshot.hasError) {
                            return Center(
                              child: Text('Error: ${snapshot.error}'),
                            );
                          }
                          if (!snapshot.hasData ||
                              snapshot.data!.docs.isEmpty) {
                            return const Center(
                              child: Text('No products available.'),
                            );
                          }

                          var productList = snapshot.data!.docs;

                          return ListView.builder(
                            itemCount: productList.length,
                            itemBuilder: (context, index) {
                              return buildProductTile(productList[index]);
                            },
                          );
                        },
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
