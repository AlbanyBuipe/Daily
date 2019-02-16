import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(35.0),
              width: 80,
              height: 90,
              child: Image.asset('assets/images/logo.jpg')
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Center(
                    child: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: (){print("Clicked");},
                    ),
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
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text('Calendar')),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('Task'))
        ],
      ),
    );
  }
}