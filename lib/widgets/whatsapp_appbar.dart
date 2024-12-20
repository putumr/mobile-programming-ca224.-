import 'package:flutter/material.dart';
import 'package:yourapp/colors/colors.dart';
import 'package:yourapp/widgets/whatsapp_icon.dart';
import 'package:yourapp/widgets/whatsapp_tabs.dart';

class WhatsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WhatsAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: WhatsAppColors.appBarColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "WhatsApp",
                style: TextStyle(
                  color: WhatsAppColors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              WhatsAppIcon(
                icon: Icons.camera_alt_outlined,
                right: 20,
                color: WhatsAppColors.white.withOpacity(0.5),
                ontap: () {},
              ),
              WhatsAppIcon(
                icon: Icons.search,
                right: 20,
                color: WhatsAppColors.white.withOpacity(0.5),
                ontap: () {},
              ),
              WhatsAppIcon(
                icon: Icons.more_vert,
                color: WhatsAppColors.white.withOpacity(0.5),
                ontap: () {},
              ),
            ],
          ),
        ],
      ),
      bottom: TabBar(
        indicatorColor: WhatsAppColors.tabFocusedColor,
        indicatorWeight: 3.5,
        labelColor: WhatsAppColors.tabFocusedColor,
        unselectedLabelColor: WhatsAppColors.white.withOpacity(0.5),
        tabs: [
          WhatsAppTabs(text: "Chats"),
          WhatsAppTabs(text: "Status"),
          WhatsAppTabs(text: "Calls"),
        ],
      ),
    );
  }
}
