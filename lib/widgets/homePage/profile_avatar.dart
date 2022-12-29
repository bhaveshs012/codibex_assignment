import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: SvgPicture.asset(
            'assets/images/avatar.svg',
            fit: BoxFit.fill,
            height: 70,
            width: 70,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child: SvgPicture.asset(
              'assets/icons/more.svg',
              height: 15,
            ),
          ),
        ),
      ],
    );
  }
}
