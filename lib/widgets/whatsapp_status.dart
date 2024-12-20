import 'package:flutter/material.dart';
import 'package:yourapp/colors/colors.dart';
import 'package:yourapp/widgets/whatsapp_plusbutton.dart';

class WhatsAppStatus extends StatelessWidget {
  const WhatsAppStatus({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: double.infinity,
      color: WhatsAppColors.backgroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              width: width,
              height: 75,
              color: WhatsAppColors.backgroundColor,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(
                                    "assets/foto/10.jpg",
                                    width: 58,
                                    height: 58,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40, top: 30),
                              child: WhatsAppPlusButton(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 135),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "My Status",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Tap To Add Status Update",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
