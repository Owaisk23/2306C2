import 'package:flutter/material.dart';

class DynamicList extends StatefulWidget {
  const DynamicList({ Key? key }) : super(key: key);

  @override
  _DynamicListState createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {
  final Users = [
    {
      "id": 1,
      "name": "Munna Bhai",
    },
    {
      "id": 2,
      "name": "Hathi Bhai",
    },
    {
      "id": 3,
      "name": "Jetha Bhai",
    },
    {
      "id": 4,
      "name": "Altaf Bhai",
    },
    {
      "id": 5,
      "name": "Shakoor BHai",
    },
    {
      "id": 6,
      "name": "Moin Bhai",
    },
    {
      "id": 7,
      "name": "Ali Bhai",
    },
    {
      "id": 8,
      "name": "Taha BHai",
    },
  ];

  var Cars = [
    {
      "name": "BMW",
      "model": "X5",
      "price": 50000,
      "color": "Black",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH-ZyBZr-4egsRsDzy9JjuJNQ8HAzQEyuQFw&s",
    },
    {
      "name": "Audi",
      "model": "A6",
      "price": 60000,
      "color": "White",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH-ZyBZr-4egsRsDzy9JjuJNQ8HAzQEyuQFw&s",
    },
    {
      "name": "Mercedes",
      "model": "C-Class",
      "price": 70000,
      "color": "Silver",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH-ZyBZr-4egsRsDzy9JjuJNQ8HAzQEyuQFw&s",
    },
    {
      "name": "Toyota",
      "model": "Camry",
      "price": 30000,
      "color": "Blue",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH-ZyBZr-4egsRsDzy9JjuJNQ8HAzQEyuQFw&s",
    },
    {
      "name": "Honda",
      "model": "Accord",
      "price": 25000,
      "color": "Red",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH-ZyBZr-4egsRsDzy9JjuJNQ8HAzQEyuQFw&s",
    }
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic List'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body:Center(
        child:  ListView.builder(
        itemCount: Cars.length,
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
            title: Text('${Cars[index]['name']}'),
            subtitle: Text('Car Model: ${Cars[index]['model']} \nCar Color: ${Cars[index]['color']}'),
            leading: Image.network('${Cars[index]['image']}'),
            trailing: Text('Car Price: ${Cars[index]['price']}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),)
          ),
          );
        },
      )
      ),
      // body: ListView.builder(
      //   itemCount: Users.length,
      //   itemBuilder: (context, index){
      //     return ListTile(
      //       title: Text('${Users[index]['name']}'),
      //       subtitle: Text('This is our BHAI users!!'),
      //       leading: Icon(Icons.person),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     );
      //   },
      // ),
    );
  }
}