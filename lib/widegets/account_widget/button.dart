import 'package:flutter/material.dart';
import 'package:grocries_app/constants/app_colors.dart';

class ButtonAccount extends StatelessWidget {
  final VoidCallback? onTap;

  const ButtonAccount({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;

        final double horizontalPadding = (width * 0.05).clamp(16.0, 24.0);
        final double verticalPadding = (width * 0.04).clamp(12.0, 18.0);
        final double iconSize = (width * 0.06).clamp(20.0, 24.0);
        final double fontSize = (width * 0.045).clamp(15.0, 18.0);
        final double borderRadius = (width * 0.05).clamp(14.0, 19.0);

        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(borderRadius),
            child: Ink(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                color: const Color(0xffF2F3F2),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.logout_outlined,
                    color: AppColors.primary,
                    size: iconSize,
                  ),
                  Expanded(
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: iconSize),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}