import 'package:codibex_assignment/constants/colors.dart';
import 'package:flutter/material.dart';

class HealthRiskSummary extends StatelessWidget {
  const HealthRiskSummary({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff919CB3),
          width: 0.3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            title + ' ',
            style: TextStyle(
              fontSize: 16,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 16,
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}
