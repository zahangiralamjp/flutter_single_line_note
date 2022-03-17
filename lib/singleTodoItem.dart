import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class SingleTodoItem extends StatelessWidget {
  final int? index;
  final String? id;
  final String? title;
  final DateTime? datetime;
  final Function? delatetod;
  SingleTodoItem(
      {this.index, this.id, this.title, this.datetime, this.delatetod});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Row(
          children: [
            Text(
              "$index",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 20),
            Text(
              "$title",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            SizedBox(width: 10),
            Text(
              datetime != null
                  ? "${DateFormat('dd-mm-yyy').format(datetime!)}"
                  : "No Date",
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                delatetod!(id);
              },
              icon: Icon(
                Icons.delete,
                size: 25,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}