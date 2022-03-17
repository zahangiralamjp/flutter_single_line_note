import 'package:flutter/material.dart';
import 'package:flutter_todo/home.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "To Do",
    home: HomePage(),
  ));
}