import 'package:flutter/material.dart';
import 'package:flutter_checkout_payment/core/widgets/custom_app_bar.dart';

class PaymentDatailsView extends StatelessWidget {
  const PaymentDatailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Payment Details"),
    );
  }
}
