import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ApropoPage extends StatelessWidget {
  const ApropoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("A propos")),
      body: Row(
        children: [
          Container(height: 300, child: Image.asset("assets/img_apropos_cover.png")),
          SizedBox(width: 36),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ce jeu est génial", style: TextStyle(fontSize: 28)),
                Text("Ce jeu est un prototype de cours de programmation informatique avec le Langage Flutter"),
                ElevatedButton(
                  onPressed: () {
                    final Uri url = Uri.parse("https://rab-tech.com");

                    launchUrl(url);
                  },
                  child: Text("Voir notre site web"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
