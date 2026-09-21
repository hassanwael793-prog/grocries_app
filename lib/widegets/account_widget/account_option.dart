import 'package:flutter/material.dart';

class AccountOption extends StatelessWidget {
  const AccountOption({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;
        final double iconSize = (width * 0.06).clamp(18.0, 24.0);
        final double fontSize = (width * 0.045).clamp(14.0, 18.0);
        final double spacing = (width * 0.04).clamp(10.0, 18.0);

        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Icon(icon, size: iconSize),
                  SizedBox(width: spacing),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: iconSize * 0.75,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color(0xffE2E2E2),
              height: 1,
            ),
          ],
        );
      },
    );
  }
}