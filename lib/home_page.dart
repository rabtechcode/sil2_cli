import 'package:flutter/material.dart';

Widget home() {
  return Scaffold(
    appBar: AppBar(title: Text("Titre")),
    body: Container(color: Colors.blue, child: Text("Boring"), padding: EdgeInsets.all(20), margin: EdgeInsets.all(20)),
  );
}
