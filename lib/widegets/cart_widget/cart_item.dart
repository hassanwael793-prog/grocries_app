import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;

  const CartItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            widget.imagePath,
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 20),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // الاسم والوزن وزرار الحذف X
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff181725),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          widget.subtitle,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.close,
                      color: Color(0xffB3B3B3),
                      size: 20,
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                // العداد والسعر
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // أزرار التحكم في الكمية
                    Row(
                      children: [
                        // زر النقصان (-)
                        GestureDetector(
                          onTap: () {
                            if (quantity > 1) {
                              setState(() {
                                quantity--;
                              });
                            }
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: const Color(0xffE2E2E2)),
                            ),
                            child: const Icon(
                              Icons.remove,
                              color: Color(0xffB3B3B3),
                              size: 20,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            '$quantity',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff181725),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: const Color(0xffE2E2E2)),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Color(0xff53B175),
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Text(
                      widget.price,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff181725),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}