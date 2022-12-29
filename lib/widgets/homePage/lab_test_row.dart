import 'package:flutter/material.dart';

class LabTestRow extends StatelessWidget {
  const LabTestRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Color(0xffAF3AFF),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              'Book Lab Test',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xffAF3AFF),
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              'Already Tested',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
