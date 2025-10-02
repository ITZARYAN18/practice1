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
    imageUrl: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/3e36d7df-5e67-4c5f-aec2-2b3f2f8d3d1d/air-max-shoe.png"
  ),
  Product(
    name: "Adidas Run",
    price: 2999.0,
    imageUrl: "https://assets.adidas.com/images/w_600,f_auto,q_auto/12345abc123/Ultraboost_22_Shoes_Black_GX5461_01_standard.jpg"
  ),
  Product(
    name: "Puma Sport",
    price: 3999.0,
    imageUrl: "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_600,h_600/global/376682/02/sv01/fnd/IND/fmt/png"
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

                Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                  height: 120,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.broken_image, size: 80, color: Colors.grey);
                  },
                ),

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
