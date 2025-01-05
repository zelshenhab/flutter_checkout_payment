import 'package:flutter_checkout_payment/core/utils/api_keys.dart';
import 'package:flutter_checkout_payment/core/utils/api_service.dart';
import 'package:flutter_checkout_payment/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_checkout_payment/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel PaymentIntentInputModel) async {
    var response = await apiService.post(
        body: PaymentIntentInputModel.toJson(),
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys.secretKey);

    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);

    return paymentIntentModel;
  }
}
