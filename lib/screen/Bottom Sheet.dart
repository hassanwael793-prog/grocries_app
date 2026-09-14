import 'package:flutter/material.dart';
import '../widegets/Checkout Row Item.dart';
import 'order_accepted_screen.dart';

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Checkout',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF181725),
                ),
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, color: Color(0xFF181725), size: 24),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(thickness: 1, color: Color(0xFFE2E2E2)),


          CheckoutRowItem(
            title: 'Delivery',
            trailing: const Text(
              'Select Method',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xFF181725),
              ),
            ),
            onTap: () {},
          ),
          const Divider(thickness: 1, height: 1, color: Color(0xFFE2E2E2)),

          CheckoutRowItem(
            title: 'Pament',
            trailing: Container(
              width: 28,
              height: 18,
              decoration: BoxDecoration(
                color: const Color(0xFF181725),
                borderRadius: BorderRadius.circular(3),
              ),
              child: const Icon(
                Icons.credit_card,
                size: 14,
                color: Colors.white,
              ),
            ),
            onTap: () {


              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderAcceptedScreen(),
                ),
              );
            },
          ),
          const Divider(thickness: 1, height: 1, color: Color(0xFFE2E2E2)),

          CheckoutRowItem(
            title: 'Promo Code',
            trailing: const Text(
              'Pick discount',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xFF181725),
              ),
            ),
            onTap: () {},
          ),
          const Divider(thickness: 1, height: 1, color: Color(0xFFE2E2E2)),


          CheckoutRowItem(
            title: 'Total Cost',
            trailing: const Text(
              '\$13.97',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF181725),
              ),
            ),
            onTap: () {},
          ),
          const Divider(thickness: 1, height: 1, color: Color(0xFFE2E2E2)),

          const SizedBox(height: 18),


          RichText(
            textAlign: TextAlign.start,
            text: const TextSpan(
              text: 'By placing an order you agree to our ',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF7C7C7C),
                fontWeight: FontWeight.w500,
              ),
              children: [
                TextSpan(
                  text: 'Terms',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF181725),
                  ),
                ),
                TextSpan(text: ' And '),
                TextSpan(
                  text: 'Conditions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF181725),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),


          SizedBox(
            width: double.infinity,
            height: 65,
            child: ElevatedButton(
              onPressed: () {

                Navigator.pop(context);


                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderAcceptedScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF53B175),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
              ),
              child: const Text(
                'Place Order',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}