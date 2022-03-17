import 'package:flutter/material.dart';
import 'package:flutter_todo/singleTodoItem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = '';
  final textControler = TextEditingController();

  List<Todo> todoData = [
    Todo(
      id: "todo_1",
      title: "Test title 1",
      time: null,
    ),
    Todo(
      id: "todo_2",
      title: "Test title 2",
      time: null,
    ),
    Todo(
      id: "todo_3",
      title: "Test title 3",
      time: null,
    ),
  ];

  void _addTodo() {
    Todo todo = Todo(
      id: DateTime.now().toString(),
      title: textControler.text,
      time: DateTime.now(),
    );
    setState(() {
      todoData.add(todo);
    });
    textControler.text = '';
    title = '';
  }

  void delateTodo(String id) {
    setState(() {
      todoData.removeWhere((element) => element.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (v) {
                      setState(() {
                        title = v;
                      });
                    },
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    controller: textControler,
                    decoration: InputDecoration(
                      hintText: "Add Title",
                    ),
                  ),
                ),
                IconButton(
                  onPressed: title.length <= 0
                      ? null
                      : () {
                          _addTodo();
                        },
                  icon: Icon(Icons.add),
                  color: Colors.green,
                )
              ],
            ),
            SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: todoData.length,
                itemBuilder: (ctx, i) {
                  return SingleTodoItem(
                    index: i + 1,
                    id: todoData[i].id,
                    title: todoData[i].title,
                    datetime: todoData[i].time,
                    delatetod: delateTodo,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Todo {
  final String? id;
  final String? title;
  final DateTime? time;

  Todo({this.id, this.title, this.time});
}

/*
/*
class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "";
  
List <Todo> todoData = [
Todo(id: "Todo 01",title: "Test Title 01", time: null),
];


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
               onChanged: (v){
                 setState(() {
                   title = v;
                 });
               },
               controller: textControler,
               decoration: InputDecoration(
                hintText: "Add Title",
                prefixIcon: Icon(Icons.add),
           ),),), IconButton(onPressed: title.length <= 0 ? null :(){
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
*/
*/