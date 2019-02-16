import 'package:flutter/material.dart';
import 'ui/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Daily',
      home: SafeArea(child: HomePage()),
    )
  );
}