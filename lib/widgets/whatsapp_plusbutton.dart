import 'package:flutter/material.dart';
import 'package:yourapp/colors/colors.dart';

class WhatsAppPlusButton extends StatelessWidget {
  const WhatsAppPlusButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: WhatsAppColors.tabFocusedColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          child: Icon(
            Icons.add, 
            size: 20,
            color: WhatsAppColors.white,
          ),
        ),
      ),
    );
  }
}
