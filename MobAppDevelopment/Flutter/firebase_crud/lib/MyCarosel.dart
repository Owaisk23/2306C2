// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class MyCarousel extends StatelessWidget {
//   const MyCarousel({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CarouselSlider(
//         items: [
//         Image.network(
//             "https://images.unsplash.com/photo-1505533321630-975218a5f66f?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//         Image.network(
//             "https://images.unsplash.com/photo-1591779051696-1c3fa1469a79?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//         Image.network(
//             "https://plus.unsplash.com/premium_photo-1669357657874-34944fa0be68?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//         Image.network(
//             "https://images.unsplash.com/photo-1530076886461-ce58ea8abe24?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
//         // Text("First slider"),
//         // Text("Sixth slider"),
//         // Text("Fifth slider"),
//         // Text("Fourth slider"),
//       ], options: CarouselOptions(
//         autoPlay: true,
//         viewportFraction:1,
//         // aspectRatio: 0.7
//         height: 200
//         // autoPlayInterval: Duration(seconds: 1)
//       )),

//     );
//   }
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarousel extends StatelessWidget {
  const MyCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
         
          CarouselSlider(
            items: [
              Image.network(
                "https://images.unsplash.com/photo-1505533321630-975218a5f66f?q=80&w=1374&auto=format&fit=crop",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Image.network(
                "https://images.unsplash.com/photo-1591779051696-1c3fa1469a79?q=80&w=1374&auto=format&fit=crop",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Image.network(
                "https://plus.unsplash.com/premium_photo-1669357657874-34944fa0be68?q=80&w=1470&auto=format&fit=crop",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Image.network(
                "https://images.unsplash.com/photo-1530076886461-ce58ea8abe24?q=80&w=1471&auto=format&fit=crop",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ],
            options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
              height: 200,
            ),
          ),

          const SizedBox(height: 20),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.favorite, color: Colors.red, size: 30),
                SizedBox(width: 20),
                Icon(Icons.shopping_cart, size: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
