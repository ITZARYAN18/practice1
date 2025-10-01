import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'model.dart';



final products = [
  Product(
    name: "Nike Air",
    price: 4999,
    imageUrl: "https://via.placeholder.com/200x150.png?text=Nike+Air",
  ),
  Product(
    name: "Adidas Run",
    price: 2999,
    imageUrl: "https://via.placeholder.com/200x150.png?text=Adidas+Run",
  ),
  Product(
    name: "Puma Sport",
    price: 3999,
    imageUrl: "https://via.placeholder.com/200x150.png?text=Puma+Sport",
  ),
];


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping app"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.8
        ),
        itemBuilder: (context, index)  {
          final product = products[index];
          // return GestureDetector(
          //   // onTap:  Navigator.push(context,MaterialPageRoute(builder: (context)=>CartPage())),
          // );
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(product.imageUrl, height: 100, fit: BoxFit.cover),
                SizedBox(height: 10),
                Text(product.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text("₹${product.price}",
                    style: TextStyle(fontSize: 14, color: Colors.grey[700])),
              ],
            ),
          );
        } ,
      itemCount: products.length,),

    );
  }
}
