import 'dart:convert';
import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crud/MyWhishlist.dart';
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
    );
  }
}

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final CollectionReference products =
      FirebaseFirestore.instance.collection('products');

  final CollectionReference favorites =
      FirebaseFirestore.instance.collection('favorites');

  final TextEditingController searchController = TextEditingController();

  bool isSearching = false;
  List<DocumentSnapshot> searchResults = [];

  final String userId = FirebaseAuth.instance.currentUser!.uid;

  List<String> favoriteList = [];

  @override
  void initState() {
    super.initState();
    fetchFavProducts();
  }

  // ================== WISHLIST ==================

  Future<void> fetchFavProducts() async {
    final favProducts =
        await favorites.where("userId", isEqualTo: userId).get();

    favoriteList.clear();
    for (var doc in favProducts.docs) {
      favoriteList.add(doc['prodId']);
    }
    setState(() {});
  }

  Future<void> toggleFavorite(String prodId) async {
    if (favoriteList.contains(prodId)) {
      final favDoc = await favorites
          .where("userId", isEqualTo: userId)
          .where("prodId", isEqualTo: prodId)
          .get();

      await favorites.doc(favDoc.docs.first.id).delete();

      setState(() {
        favoriteList.remove(prodId);
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Removed from Wishlist")),
      );
    } else {
      await favorites.add({
        "userId": userId,
        "prodId": prodId,
      });

      setState(() {
        favoriteList.add(prodId);
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Added to Wishlist ❤️")),
      );
    }
  }

  // ================== DELETE ==================

  void deleteProduct(String id) async {
    await products.doc(id).delete();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Product deleted")),
    );
  }

  // ================== EDIT ==================

  void editProduct(Map<String, dynamic> productDetails) {
    TextEditingController titleController =
        TextEditingController(text: productDetails['title']);
    TextEditingController desController =
        TextEditingController(text: productDetails['description']);
    TextEditingController priceController =
        TextEditingController(text: productDetails['price'].toString());

    String imgUrl = productDetails['image'];
    final ImagePicker picker = ImagePicker();

    getImage() async {
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        Uint8List bytes = await image.readAsBytes();
        setState(() {
          imgUrl = base64Encode(bytes);
        });
      }
    }

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Edit Product"),
        content: SingleChildScrollView(
          child: Column(
            children: [
              TextField(controller: titleController),
              TextField(controller: desController),
              TextField(
                controller: priceController,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: getImage,
                child: const Text("Choose Image"),
              ),
              const SizedBox(height: 10),
              imgUrl.isNotEmpty
                  ? Image.memory(base64Decode(imgUrl), height: 80)
                  : const SizedBox(),
            ],
          ),
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel")),
          ElevatedButton(
            onPressed: () async {
              await products.doc(productDetails['id']).update({
                'title': titleController.text,
                'description': desController.text,
                'price': double.parse(priceController.text),
                'image': imgUrl,
              });
              Navigator.pop(context);
            },
            child: const Text("Update"),
          )
        ],
      ),
    );
  }

  // ================== SEARCH ==================

  void searchProducts() async {
    String query = searchController.text.trim().toLowerCase();
    if (query.isEmpty) return;

    final result = await products
        .where('title', isGreaterThanOrEqualTo: query)
        .where('title', isLessThanOrEqualTo: '$query\uf8ff')
        .get();

    setState(() {
      isSearching = true;
      searchResults = result.docs;
    });
  }

  void clearSearch() {
    setState(() {
      isSearching = false;
      searchController.clear();
      searchResults.clear();
    });
  }

  // ================== PRODUCT TILE ==================

  Widget buildProductTile(DocumentSnapshot product) {
    return ListTile(
      leading: CircleAvatar(
        child: product['image'] != null && product['image'].isNotEmpty
            ? Image.memory(base64Decode(product['image']), height: 40)
            : const Icon(Icons.image),
      ),
      title: Text(product['title']),
      subtitle: Text(product['description']),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ❤️ Wishlist
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: favoriteList.contains(product.id)
                  ? Colors.red
                  : Colors.grey,
            ),
            onPressed: () => toggleFavorite(product.id),
          ),

          // ✏ Edit
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.blue),
            onPressed: () {
              editProduct({
                'id': product.id,
                'title': product['title'],
                'description': product['description'],
                'price': product['price'],
                'image': product['image'],
              });
            },
          ),

          // 🗑 Delete
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () => deleteProduct(product.id),
          ),
        ],
      ),
    );
  }

  // ================== UI ==================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyWishList()));
          },
          icon: Icon(Icons.shopping_bag),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Search product",
                    ),
                    onSubmitted: (_) => searchProducts(),
                  ),
                ),
                const SizedBox(width: 5),
                ElevatedButton(
                    onPressed: searchProducts, child: const Text("Search")),
                if (isSearching)
                  TextButton(
                      onPressed: clearSearch, child: const Text("Clear")),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: isSearching
                  ? ListView.builder(
                      itemCount: searchResults.length,
                      itemBuilder: (_, i) =>
                          buildProductTile(searchResults[i]),
                    )
                  : StreamBuilder<QuerySnapshot>(
                      stream: products.snapshots(),
                      builder: (_, snapshot) {
                        if (!snapshot.hasData) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                        return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (_, i) =>
                              buildProductTile(snapshot.data!.docs[i]),
                        );
                      },
                    ),
            )
          ],
        ),
      ),
    );
  }
}
