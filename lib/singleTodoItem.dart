import 'package:flutter/material.dart';
import 'package:flutter_todo/home.dart';

class SingleTodoItem extends StatelessWidget {
  final int? index;
  final String? id;
  final String? title;
  final DateTime? dateTime;
  final Function delatetod;

  SingleTodoItem({this.index, this.id, this.title, this.dateTime,required this.delatetod});

  @override
  Widget build(BuildContext context) {
    delatetod;
    return Card(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("$index"),
      Text(" $id "),
      Text(" $title "),
     
      //Spacer(),
      IconButton(onPressed: (){
      delatetod(id);
      }, icon: Icon(Icons.delete)),
    ],),);
  }
}