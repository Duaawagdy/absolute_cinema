import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/custom_button.dart';

class FilmsAction extends StatelessWidget {
  const FilmsAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children:  [
         /*  Expanded(
            child: CustomButton(
              text: '19.99 €',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ), */
          Expanded(
            child: CustomButton(
              
              text: 'Submit rating',
              backgroundColor: Color(0xffef8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.all(
              Radius.circular(16)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
