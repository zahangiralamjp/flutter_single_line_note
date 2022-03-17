import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ToDo App")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(children: [
             Expanded(child: TextField(decoration: InputDecoration(
                hintText: "user Email",
                prefixIcon: Icon(Icons.security),
           ),),), IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          ],)
        ],),
      )
    );
  }
}