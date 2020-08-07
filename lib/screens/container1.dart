import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class CustomContainer1 extends StatelessWidget {
  const CustomContainer1({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20, 40, 15, 0),
            child: Text(
              'TO DO LIST ',
              style: TextStyle(
                letterSpacing: 1.9,
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            height: size.height * 0.2 - 27,
            width: size.width,
            decoration: BoxDecoration(color: Colors.redAccent),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 54,
            child: Container(
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '${Provider.of<TaskData>(context).taskCount}  Tasks ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 20,
                    color: Colors.redAccent.withOpacity(0.23),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
