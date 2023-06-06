import 'package:flutter/material.dart';
import 'package:my_tel_birr/Constants/style.dart';

class CountCard extends StatelessWidget {
  final String countNumber;
  const CountCard({super.key, required this.countNumber});

  @override
  Widget build(BuildContext context) {
    return Text(
      countNumber,
      style: Styles.buttonLabelStyle,
    );
  }
}
