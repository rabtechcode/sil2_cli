import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nomController = TextEditingController();
    TextEditingController prenomController = TextEditingController();
    TextEditingController mailController = TextEditingController();
    TextEditingController messageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Contact")),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 600),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Nous sommes à votre disposition pour tout besoin en information. Laissez-nous un message."),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 36),
                    Text("Nom"),
                    TextFormField(controller: nomController),
                    Text("Prénom"),
                    TextFormField(controller: prenomController),
                    Text("E-mail"),
                    TextFormField(controller: mailController),
                    Text("Message"),
                    TextFormField(controller: messageController),
                    ElevatedButton(
                      onPressed: () {
                        print(
                          "Formulaire\n\nNom : ${nomController.text}\nNom : ${nomController.text}\nPrénom : ${prenomController.text}\nMail : ${mailController.text}\nMessage : ${messageController.text}\n",
                        );
                      },
                      child: Text("Enregistrer"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
