import 'package:flutter/material.dart';
import 'package:yourapp/colors/colors.dart';
import 'package:yourapp/widgets/whatsapp_appbar.dart';
import 'package:yourapp/widgets/whatsapp_chats.dart';
import 'package:yourapp/widgets/whatsapp_status.dart';
import 'package:yourapp/widgets/whatsapp_call.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const WhatsAppBar(),
        body: TabBarView(
          children: [
            WhatsAppChat(),
            WhatsAppStatus(),
            WhatsAppCalls(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.chat),
          backgroundColor: WhatsAppColors.tabFocusedColor,
        ),
      ),
    );
  }
}
