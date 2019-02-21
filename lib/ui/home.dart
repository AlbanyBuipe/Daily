import 'package:flutter/material.dart';
import 'package:daily/attributes.dart';

final ThemeData theme = buildTheme();


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Container(
                margin: EdgeInsets.only(top: 24.0, left: 8.0),
                width: 80,
                height: 90,
                child: Icon(Icons.access_time, size: 48.0,)
            ),
            SizedBox(height: 48.0,),

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
                Text("Task", style: Theme.of(context).textTheme.title,),
                Padding(padding: EdgeInsets.only(left: 4.0),),
                Text("Lists", style: Theme.of(context).textTheme.caption,),

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
                              side: BorderSide(color: Colors.grey), ),
                        ),
                        width: 39.0,
                        height: 38.0,
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
                    child: Text("Add List", style: Theme.of(context).textTheme.display2),
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