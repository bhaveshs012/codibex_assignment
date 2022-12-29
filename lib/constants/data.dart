import 'dart:io';

import 'package:codibex_assignment/constants/colors.dart';
import 'package:codibex_assignment/models/report.dart';
import 'package:flutter/cupertino.dart';

final List<Report> data = [
  Report(
    title: 'Skin Rash',
    status: 'Report Ready',
    color: secondaryGreen,
    bgColor: Color(
      0xffE6F8F2,
    ),
  ),
  Report(
    title: 'Diabetes',
    status: 'In Progress',
    color: secondaryYellow,
    bgColor: Color(0xffFFFCF3),
  ),
];
