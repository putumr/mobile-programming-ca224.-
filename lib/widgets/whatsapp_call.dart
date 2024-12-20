import 'package:flutter/material.dart';
import 'package:yourapp/colors/colors.dart';

class WhatsAppCalls extends StatelessWidget {
  const WhatsAppCalls({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: double.infinity,
      color: WhatsAppColors.backgroundColor,
    );
  }
}
