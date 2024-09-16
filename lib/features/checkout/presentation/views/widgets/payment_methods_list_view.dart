import 'package:flutter/material.dart';
import 'package:flutter_checkout_payment/features/checkout/presentation/views/widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatelessWidget {
  PaymentMethodsListView({super.key});
  final List<String> paymentMethodsItems = [
    "assets/images/card.svg",
    "assets/images/paypal.svg"
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          itemCount: paymentMethodsItems.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: PaymentMethodItem(
                isActive: false,
                image: paymentMethodsItems[index],
              ),
            );
          }),
    );
  }
}
