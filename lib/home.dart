import 'package:flutter/material.dart';
import 'package:flutter_todo/singleTodoItem.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List <Todo> todoData = [
Todo(id: "Todo 01",title: "Test Title 01", time: null),
];

final textControler = TextEditingController();
void _addTodo(){
  Todo todo = Todo(
    id: DateTime.now().toString(),
    title: textControler.text,
    time: DateTime.now(),

  );
  setState(() {
    todoData.add(todo);
  });
  textControler.text = "";
}

void delateTodo(String id){
  //todoData.firstWhere((element) => element.id == id);
 
  setState(() {
     todoData.removeWhere((element) => element.id == id);
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ToDo App")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(children: [
             Expanded(child: TextField(
               controller: textControler,
               decoration: InputDecoration(
                hintText: "user Email",
                prefixIcon: Icon(Icons.security),
           ),),), IconButton(onPressed: (){
             _addTodo();
           }, icon: Icon(Icons.add)),
        ],),
          SizedBox(height: 15,),
          Expanded(child: ListView.builder(
            itemCount: todoData.length,
            itemBuilder: (ctx, i){
              return SingleTodoItem(
                index: i + 1,
                id: todoData[i].id,
                title: todoData[i].title,
                dateTime: todoData[i].time,
                delatetod: delateTodo,
              );
            },
          ))
        ],),
      )
    );
  }
}
class Todo {
  final String? id;
  final String? title;
  final DateTime? time;

  Todo({this.id, this.title, this.time});
 
}