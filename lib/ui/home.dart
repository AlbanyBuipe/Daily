import 'package:flutter/material.dart';
import 'package:daily/attributes.dart';
import 'package:daily/model/Task.dart';

final ThemeData theme = buildTheme();

class HomePage extends StatelessWidget {
  final List taskList = Task.loadTasks();

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
                child: Icon(
                  Icons.access_time,
                  size: 48.0,
                )),
            SizedBox(
              height: 48.0,
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
                Text(
                  "Task",
                  style: Theme.of(context).textTheme.title,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.0),
                ),
                Text(
                  "Lists",
                  style: Theme.of(context).textTheme.caption,
                ),
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
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.grey),
                          ),
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
                    child: Text("Add List",
                        style: Theme.of(context).textTheme.display2),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 275,
              child: ListView.builder(
                itemBuilder: (context, position) {
                  return makeCard(context, position);
                },
                itemCount: taskList.length,
                shrinkWrap: true,

                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 8.0),
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

  Widget makeCard(BuildContext context, int index) {
    return Container(
      height: 270.0,
      width: 165.0,
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
        color: Colors.purple,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 32.0,
            ),
            Text(
              taskList[index].title,
              style: Theme.of(context).textTheme.display1,
              textAlign: TextAlign.left,
              softWrap: true,
            ),
            Flexible(
              child: Container(
                margin: const EdgeInsets.only(left: 25.0),
                child: Divider(
                  color: Colors.white,
                  height: 36,
                ),
              ),
              fit: FlexFit.loose,
            ),
          ],
          mainAxisSize: MainAxisSize.min,
        ),
      ),
    );
  }
}
