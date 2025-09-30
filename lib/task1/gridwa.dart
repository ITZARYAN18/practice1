import 'package:flutter/material.dart';

class GridTrial extends StatelessWidget {
  const GridTrial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Grids"),
      ) ,
      body: GridView.count(crossAxisCount: 2,children: [
        Container(
          color: Colors.red,
          child: Center(child: Text("Red")),

        ),
        Container(
          color: Colors.green,
          child: Center(child: Text("Green")),

        ),
        Container(
          color: Colors.white,
          child: Center(child: Text("White")),

        ),
        Container(
          color: Colors.blue,
          child: Center(child: Text("Blue")),

        ),
        Container(
          color: Colors.orange,
          child: Center(child: Text("Orange")),

        ),
        Container(
          color: Colors.brown,
          child: Center(child: Text("Brown")),

        ),

      ],),
    );
  }
}
