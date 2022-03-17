import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List <Todo> todoData = [
Todo(id: "Todo 01",title: "Test Title 01", time: null),
];

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
          ],),
          Expanded(child: ListView.builder(
            itemCount: todoData.length,
            itemBuilder: (ctx, i){
              return Text("Hello World!");
            },
          ))
        ],),
      )
    );
  }
}class Todo {
  final String? id;
  final String? title;
  final DateTime? time;

  Todo({this.id, this.title, this.time});
 
}