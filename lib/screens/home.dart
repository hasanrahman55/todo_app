import 'package:flutter/material.dart';

import 'addtask.dart';
import 'container1.dart';
import 'container2.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            CustomContainer1(size: size),
            CustomContainer2(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskSection(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
