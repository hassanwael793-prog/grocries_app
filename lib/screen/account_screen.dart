import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocries_app/widegets/account_widget/account_option.dart';
import 'package:grocries_app/widegets/account_widget/button.dart';
import 'package:grocries_app/widegets/account_widget/profil_info.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
        child: Column(
          children: [
            ProfilInfo(),
            SizedBox(height: 30,),
            Divider(),
            AccountOption(text: "Orders", icon: Icons.shopping_bag_outlined),
            AccountOption(text: "My Details", icon: Icons.badge_outlined),
            AccountOption(text: "Delivery Address", icon: Icons.location_on_outlined),
            AccountOption(text: "Payment Methods", icon: Icons.credit_card_outlined),
            AccountOption(text: "Promo Cord", icon: Icons.confirmation_number_outlined),
            AccountOption(text: "Notifecations ", icon: Icons.notifications_none_outlined),
            AccountOption(text: "Help", icon: Icons.help_outline),
            AccountOption(text: "About ", icon: Icons.error_outline),
            SizedBox(height: 50,),
            ButtonAccount(),


      
          ]
        ),
      ),
    );

  }
}