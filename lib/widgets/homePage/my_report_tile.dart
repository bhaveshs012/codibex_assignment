import 'package:codibex_assignment/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyReportTile extends StatelessWidget {
  const MyReportTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
        left: 16,
        right: 5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            'assets/images/graph.svg',
            height: 20,
            width: 20,
          ),
          const Text(
            'My',
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontFamily: 'Satoshi',
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Reports',
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontFamily: 'Satoshi',
            ),
          ),
        ],
      ),
    );
  }
}
