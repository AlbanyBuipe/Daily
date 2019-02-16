import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(35.0),
                width: 80,
                height: 90,
                child: Image.asset('assets/images/logo.jpg')
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 30.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    ),
                  ),
                ),
                Text("Task List"),

                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 30.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    ),
                  ),
                )
              ],
            ),

            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 48.0),
                    child: Center(
                      child: Container(
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(color: Colors.grey)),

                        ),
                        width: 41.0,
                        height: 40.0,
                        child: Icon(
                          Icons.add,
                          size: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text("Add List"),
                  )
                ],
              ),
            )
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), title: Text('Calendar')),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('Task'))
        ],
      ),
    );
  }
}