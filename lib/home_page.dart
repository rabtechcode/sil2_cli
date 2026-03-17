import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Acceuil')),
      body: Column(
        children: [
          Expanded(child: Center(child: Text('Bienvenue dans notre application'))),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue.withValues(alpha: 0.4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.play_arrow), Text('Jeu')],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow.withValues(alpha: 0.4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.info), Text('A propos')],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green.withValues(alpha: 0.4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.support_agent), Text('Contact')],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red.withValues(alpha: 0.4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.close), Text('Quitter')],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
