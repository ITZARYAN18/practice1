import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'model.dart';


class Product {
  final String name;
  final double price;
  final String imageUrl;

  Product({required this.name, required this.price, required this.imageUrl});
}
final products = [
  Product(
    name: "Nike Air",
    price: 4999.0,
    imageUrl: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  Product(
    name: "Adidas Run",
    price: 2999.0,
    imageUrl: "https://images.unsplash.com/photo-1651013691313-81b822df0044?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  Product(
    name: "Puma Sport",
    price: 3999.0,
    imageUrl: "https://images.unsplash.com/photo-1603808033192-082d6919d3e1?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  Product(
      name: "Nike Air",
      price: 4999.0,
      imageUrl: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  Product(
      name: "Adidas Run",
      price: 2999.0,
      imageUrl: "https://images.unsplash.com/photo-1651013691313-81b822df0044?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  Product(
      name: "Puma Sport",
      price: 3999.0,
      imageUrl: "https://images.unsplash.com/photo-1603808033192-082d6919d3e1?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  Product(
      name: "Nike Air",
      price: 4999.0,
      imageUrl: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  Product(
      name: "Adidas Run",
      price: 2999.0,
      imageUrl: "https://images.unsplash.com/photo-1651013691313-81b822df0044?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  Product(
      name: "Puma Sport",
      price: 3999.0,
      imageUrl: "https://images.unsplash.com/photo-1603808033192-082d6919d3e1?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
];


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(child: Text("Shopping app")),
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
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProductDetailPage(product: product),
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 3,
              child: Column(
            
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
            
                  Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 120,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.broken_image, size: 80, color: Colors.grey);
                    },
                  ),
            
                  SizedBox(height: 10),
                  Text(product.name,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("₹${product.price}",
                      style: TextStyle(fontSize: 18, color: Colors.grey[700])),
                ],
              ),
            ),
          );
        } ,
      itemCount: products.length,),

    );
  }
}
