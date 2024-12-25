import 'package:flutter/material.dart';
import 'package:todo/util/my_botton.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 140,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          // get user input
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task",
            ),
          ),

          // buttons -> save + cancle
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //save button
              MyBotton(text: "Save", onPressed: onSave),
              const SizedBox(
                width: 8,
              ),

              // cancle button
              MyBotton(text: "Cancle", onPressed: onCancel),
            ],
          )
        ]),
      ),
    );
  }
}
