import 'dart:io';

import 'package:flutter/material.dart';
import 'package:yourapp/pages/chat_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid || Platform.isIOS) {
    runApp(const MyApp());
  } else {
    exit(0);
  }
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatApp",
      debugShowCheckedModeBanner: false,
      home: ChatPage(),
    );
  }
}