import 'package:flutter/material.dart';

class CustomFloatingActionButtonWidget extends StatelessWidget {
  const CustomFloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Add New Task"),
            titleTextStyle: TextStyle(
              fontFamily: "Poppins",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            content: SizedBox(
              width: double.maxFinite,
              child: TextFormField(
                style: TextStyle(fontFamily: "Poppins"),
                decoration: InputDecoration(
                  hintText: "Enter Task Name",
                  hintStyle: TextStyle(fontFamily: "Poppins"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("CANCEL"),
              ),
              TextButton(onPressed: () {}, child: Text("OK")),
            ],
          ),
        );
      },
      child: Icon(Icons.add),
    );
  }
}
