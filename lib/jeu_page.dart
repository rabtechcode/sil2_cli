import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class JeuPage extends StatefulWidget {
  const JeuPage({super.key});

  @override
  State<JeuPage> createState() => _JeuPageState();
}

class _JeuPageState extends State<JeuPage> {
  int positionVert = 0;
  int score = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      nouveauJeu();
    });
    nouveauJeu();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jeu')),
      body: Center(
        child: Column(
          children: [
            Text('Score : $score', style: TextStyle(fontSize: 34)),
            Text('Appuyez sur le cadre vert'),
            Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 400),
                child: Column(
                  children: [
                    Expanded(child: Row(children: [carte(position: 1), carte(position: 2), carte(position: 3)])),
                    Expanded(child: Row(children: [carte(position: 4), carte(position: 5), carte(position: 6)])),
                    Expanded(child: Row(children: [carte(position: 7), carte(position: 8), carte(position: 9)])),
                  ],
                ),
              ),
            ),
            SizedBox(height: 26),
          ],
        ),
      ),
    );
  }

  Widget carte({required int position}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (position == positionVert) {
              score += 5;
            } else {
              score -= 2;
              if (score < 0) score = 0;
            }
          });
          nouveauJeu();
        },
        child: Container(color: position == positionVert ? Colors.green : Colors.red, margin: EdgeInsets.all(1)),
      ),
    );
  }

  void nouveauJeu() {
    positionVert = Random().nextInt(9) + 1;
    setState(() {});
  }
}
