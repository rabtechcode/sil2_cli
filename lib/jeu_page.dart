import 'package:flutter/material.dart';

class JeuPage extends StatelessWidget {
  const JeuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.close, size: 200, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
