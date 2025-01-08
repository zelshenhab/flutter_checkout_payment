import 'package:flutter/material.dart';
import 'package:flutter_checkout_payment/core/utils/api_keys.dart';
import 'package:flutter_checkout_payment/features/checkout/presentation/views/widgets/my_cart_view.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}

// paymentIntentObject, create payment intent (amount, currency)
// init payment sheet (paymentIntentClientSecret)
// present payment Sheet
