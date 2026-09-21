import 'package:flutter/material.dart';
import 'package:grocries_app/widegets/account_widget/account_option.dart';
import 'package:grocries_app/widegets/account_widget/button.dart';
import 'package:grocries_app/widegets/account_widget/profil_info.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double maxWidth = constraints.maxWidth;
            final double maxHeight = constraints.maxHeight;
            final bool isLandscape = maxWidth > maxHeight;

            final double horizontalPadding = maxWidth * 0.04;
            final double verticalPadding = maxHeight * 0.02;

            if (isLandscape) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: verticalPadding,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const ProfilInfo(),
                            SizedBox(height: maxHeight * 0.05),
                            const ButtonAccount(),
                          ],
                        ),
                      ),
                    ),
                    const VerticalDivider(width: 32),
                    Expanded(
                      flex: 3,
                      child: ListView(
                        children: _buildAccountOptions(),
                      ),
                    ),
                  ],
                ),
              );
            }

            return ListView(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              children: [
                const ProfilInfo(),
                SizedBox(height: maxHeight * 0.03),
                const Divider(),
                ..._buildAccountOptions(),
                SizedBox(height: maxHeight * 0.03),
                const ButtonAccount(),
              ],
            );
          },
        ),
      ),
    );
  }

  List<Widget> _buildAccountOptions() {
    return const [
      AccountOption(text: "Orders", icon: Icons.shopping_bag_outlined),
      AccountOption(text: "My Details", icon: Icons.badge_outlined),
      AccountOption(text: "Delivery Address", icon: Icons.location_on_outlined),
      AccountOption(text: "Payment Methods", icon: Icons.credit_card_outlined),
      AccountOption(text: "Promo Cord", icon: Icons.confirmation_number_outlined),
      AccountOption(text: "Notifications", icon: Icons.notifications_none_outlined),
      AccountOption(text: "Help", icon: Icons.help_outline),
      AccountOption(text: "About", icon: Icons.error_outline),
    ];
  }
}