import 'package:flutter/material.dart';
import 'package:yourapp/colors/colors.dart';
import 'package:yourapp/widgets/whatsapp_contact.dart'; // Corrected import statement

class WhatsAppChat extends StatelessWidget {
  const WhatsAppChat({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: double.infinity,
      color: WhatsAppColors.backgroundColor,
      child: ListView(
        primary: false,
        children: [
          WhatsAppContact(
            imageUrl: "assets/foto/1.jpeg", // Corrected image path
            user: "Ella",
            briefChat: "Hai",
            date: "30/10/2024",
          ),
          WhatsAppContact(
            imageUrl: "assets/foto/2.png", // Corrected image path
            user: "Babayo",
            briefChat: "Halo",
            date: "28/10/2024",
          ),
          WhatsAppContact(
            imageUrl: "assets/foto/3.jpeg", // Corrected image path
            user: "Jarjit",
            briefChat: "Dua tiga Nasi Padang",
            date: "26/10/2024",
          ),
          WhatsAppContact(
            imageUrl: "assets/foto/4.png", // Corrected image path
            user: "Boss",
            briefChat: "Hai BIG BOSS",
            date: "24/10/2024",
          ),
          WhatsAppContact(
            imageUrl: "assets/foto/5.jpeg", // Corrected image path
            user: "Bapak Jokowi Dodo",
            briefChat: "Jangan Tanya Saya",
            date: "22/10/2024",
          ),
          WhatsAppContact(
            imageUrl: "assets/foto/6.jpeg", // Corrected image path
            user: "Boby Kertanegara",
            briefChat: "Tangkap Dia!!!!!!!",
            date: "20/10/2024",
          ),
          WhatsAppContact(
            imageUrl: "assets/foto/7.jpeg", // Corrected image path
            user: "Bapak Prabowo",
            briefChat: "Siap Lasanakan",
            date: "18/10/2024",
          ),
          WhatsAppContact(
            imageUrl: "assets/foto/8.jpg", // Corrected image path
            user: "Fumiko",
            briefChat: "arigatou gozaimasu",
            date: "14/10/2024",
          ),
          WhatsAppContact(
            imageUrl: "assets/foto/9.jpg", // Corrected image path
            user: "Dora Emon",
            briefChat: "neko",
            date: "12/10/2024",
          ),
          WhatsAppContact(
            imageUrl: "assets/foto/10.jpg", // Corrected image path
            user: "My Love",
            briefChat: "Aegiya",
            date: "12/10/2024",
          ),
        ],
      ),
    );
  }
}
