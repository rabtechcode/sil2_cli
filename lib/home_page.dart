import 'package:flutter/material.dart';
import 'package:sil2_cli/apropos_page.dart';
import 'package:sil2_cli/contact_page.dart';
import 'package:sil2_cli/jeu_page.dart';
import 'package:sil2_cli/quitter_page.dart';

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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return JeuPage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      color: Colors.blue.withValues(alpha: 0.4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.play_arrow), Text('Jeu')],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ApropoPage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      color: Colors.yellow.withValues(alpha: 0.4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.info), Text('A propos')],
                      ),
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
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ContactPage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      color: Colors.green.withValues(alpha: 0.4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.support_agent), Text('Contact')],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print("quitter appuyer");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return QuitterPage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      color: Colors.red.withValues(alpha: 0.4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.close), Text('Quitter')],
                      ),
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
