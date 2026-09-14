import 'package:flutter/material.dart';

class FilterCheckboxItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  const FilterCheckboxItem({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!isSelected),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(
                value: isSelected,
                onChanged: onChanged,
                activeColor: const Color(0xFF53B175),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                side: const BorderSide(
                  color: Color(0xFFC2C2C2),
                  width: 1.5,
                ),
              ),
            ),
            const SizedBox(width: 14),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isSelected
                    ? const Color(0xFF53B175)
                    : const Color(0xFF181725),
              ),
            ),
          ],
        ),
      ),
    );
  }
}