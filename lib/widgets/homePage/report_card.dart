import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReportCard extends StatelessWidget {
  const ReportCard({
    Key? key,
    required this.title,
    required this.status,
    required this.color,
    required this.bgColor,
  }) : super(key: key);
  final String title;
  final String status;
  final Color color;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xffDADADA),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: color,
                offset: const Offset(-3, 0),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff4E5766),
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: color,
                  ),
                  SizedBox(width: 8),
                  Text(
                    status,
                    style: TextStyle(
                      fontSize: 16,
                      color: color,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Satoshi',
                    ),
                  ),
                  const SizedBox(width: 8),
                  SvgPicture.asset(
                    'assets/icons/next.svg',
                    height: 12,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
