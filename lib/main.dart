import 'package:flutter/material.dart';
import 'ui/home.dart';
import 'attributes.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Daily',
      theme: buildTheme(),
      home: SafeArea(child: HomePage()),
    )
  );
}