import 'package:flutter/material.dart';
import 'package:todo_app/buttons.dart';

class Dialogs extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  Dialogs({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[300],
      content: Container(
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //to get the new task
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "New Task",
              ),
            ),

            //buttons to save and to cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //to save
                Buttons(text: "Save", onPressed: onSave),

                const SizedBox(width: 8),

                // to Back
                Buttons(text: "Back", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
