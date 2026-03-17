import 'package:flutter/material.dart';

class QuitterPage extends StatelessWidget {
  const QuitterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
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
