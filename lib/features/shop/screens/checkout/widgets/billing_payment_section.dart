import 'package:flutter/material.dart';
import 'package:khalti/khalti.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../controllers/checkout_controller.dart';

class TBillingPaymentSection extends StatefulWidget {
  const TBillingPaymentSection({super.key});

  @override
  State<TBillingPaymentSection> createState() => _TBillingPaymentSectionState();
}

class _TBillingPaymentSectionState extends State<TBillingPaymentSection> {
  @override
  Widget build(BuildContext context) {
    String referenceId = "";
    final controller = CheckoutController.instance;
    return Column(
        children: [

          ElevatedButton(
              onPressed: () {
                payWithKhaltiInApp(context);
              },
              child: const Text("Pay with Khalti")),

          Text(referenceId)
        ]
    );
  }
}



payWithKhaltiInApp(BuildContext context) {
  KhaltiScope.of(context).pay(
    config: PaymentConfig(
      amount: 1000, //in paisa
      productIdentity: 'Product Id',
      productName: 'Product Name',
      mobileReadOnly: false,
    ),
    preferences: [
      PaymentPreference.khalti,

    ],
    // onSuccess: onSuccess(su),
    onFailure: onFailure,
    onCancel: onCancel,
    onSuccess: (PaymentSuccessModel value) {
      onSuccess(value, context);
    },
  );
}

void onSuccess(PaymentSuccessModel success, BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Payment Successful'),

        actions: [
          SimpleDialogOption(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      );
    },
  );
}

void onFailure(PaymentFailureModel failure) {
  debugPrint(
    failure.toString(),
  );
}

void onCancel() {
  debugPrint('Cancelled');
}
