import 'package:flutter/material.dart';
import 'package:notes_app/tut1/provide.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),

      body:
      Center(
        child: Text(
          context.watch<Provide>().number.toString(),
        ),
      )
      ,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (){
                context.read<Provide>().Increase();
              }),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
              child: Text("-",style: TextStyle(
                fontSize: 30
              ),),
              onPressed: (){
                context.read<Provide>().Decrease();
              })
        ],
      ),

      // floatingActionButton: FloatingActionButton(onPressed: (){}),
    );
  }
}
