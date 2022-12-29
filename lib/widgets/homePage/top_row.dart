import 'package:codibex_assignment/widgets/homePage/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopRow extends StatelessWidget {
  const TopRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const ProfileAvatar(),
        SvgPicture.asset(
          'assets/icons/notification.svg',
          height: 50,
        ),
      ],
    );
  }
}
