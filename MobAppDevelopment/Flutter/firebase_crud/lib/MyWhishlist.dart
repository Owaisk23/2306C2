import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyWishList extends StatefulWidget {
  const MyWishList({super.key});

  @override
  State<MyWishList> createState() => _MyWishListState();
}

class _MyWishListState extends State<MyWishList> {
  final CollectionReference favorites =
      FirebaseFirestore.instance.collection("favorites");

  final CollectionReference products =
      FirebaseFirestore.instance.collection("products");

  late final String userId;

  List<Map<String, dynamic>> wishListProducts = [];

  @override
  void initState() {
    super.initState();
    userId = FirebaseAuth.instance.currentUser!.uid;
    fetchWishList();
  }

  Future<void> fetchWishList() async {
    final favDocs =
        await favorites.where("userId", isEqualTo: userId).get();

    wishListProducts.clear();

    for (var fav in favDocs.docs) {
      final prodSnap = await products.doc(fav['prodId']).get();

      if (prodSnap.exists) {
        wishListProducts.add({
          'id': prodSnap.id,
          'title': prodSnap['title'],
          'description': prodSnap['description'],
          'image': prodSnap['image'],
        });
      }
    }
    setState(() {});
  }

  Future<void> removeFromWishlist(String prodId) async {
    final favDoc = await favorites
        .where("userId", isEqualTo: userId)
        .where("prodId", isEqualTo: prodId)
        .get();

    await favorites.doc(favDoc.docs.first.id).delete();

    setState(() {
      wishListProducts.removeWhere((item) => item['id'] == prodId);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Removed from Wishlist")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Wishlist")),
      body: wishListProducts.isEmpty
          ? const Center(child: Text("No items in wishlist"))
          : ListView.builder(
              itemCount: wishListProducts.length,
              itemBuilder: (_, index) {
                final product = wishListProducts[index];

                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: product['image'] != null &&
                              product['image'].isNotEmpty
                          ? Image.memory(
                              base64Decode(product['image']),
                              height: 40,
                            )
                          : const Icon(Icons.image),
                    ),
                    title: Text(product['title']),
                    subtitle: Text(product['description']),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        removeFromWishlist(product['id']);
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}
