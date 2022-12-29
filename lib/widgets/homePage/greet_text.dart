import 'package:codibex_assignment/constants/colors.dart';
import 'package:flutter/material.dart';

class GreetText extends StatelessWidget {
  const GreetText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Hi Rahul Singh',
            style: TextStyle(
              color: Color(0xff4E5766),
              fontSize: 18,
              fontFamily: 'Satoshi',
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'Hope you’re doing great today!',
            style: TextStyle(
              color: textColor,
              fontSize: 22,
              fontFamily: 'Satoshi',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
