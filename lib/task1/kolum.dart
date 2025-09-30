import 'package:flutter/material.dart';
import 'package:notes_app/task1/gridwa.dart';

class ColumnTrial extends StatelessWidget {
  const ColumnTrial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Columns"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
            Padding(padding: EdgeInsets.all(10)),
          Center
            (

            child: Text("Welcome To Flutter Layouts",style: TextStyle(
            fontSize: 30
          ),),

          ),
          SizedBox(height: 10,),
          Container(
            child: Text("Welcome",style: TextStyle(
              fontSize: 20
            ),),
          ),
          SizedBox(height: 40,),
          Container(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> GridTrial()));
            }, child: Text("Get Started")),
          )

        ],
      ),
    );
  }
}
