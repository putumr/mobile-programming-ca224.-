import 'package:flutter/material.dart';
import 'package:yourapp/colors/colors.dart';

class WhatsAppContact extends StatelessWidget {
  final String imageUrl, user, briefChat, date;

  const WhatsAppContact({
    super.key,
    required this.imageUrl,
    required this.user,
    required this.briefChat,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
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
                  padding: const EdgeInsets.only(left: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      imageUrl,
                      width: 58,
                      height: 58,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            user,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          briefChat,
                          style: TextStyle(
                            color: WhatsAppColors.white.withOpacity(0.5),
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    date,
                    style: TextStyle(
                      color: WhatsAppColors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
