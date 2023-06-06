import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';

class FundraisingList extends StatelessWidget {
  final Color? bgColor;
  final String imageName;
  final String fundName;
  const FundraisingList({
    super.key,
    this.bgColor,
    required this.imageName,
    required this.fundName
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: GetSize.getScreenHeightDevice(50),
      decoration: BoxDecoration(
        color:bgColor ?? Colors.white,
        border: Border.all(width: 0.5, color: const Color(0xff2e6fef)),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(
            GetSize.getScreenWidthDevice(15),
          ),
           CircleAvatar(
              foregroundImage: AssetImage('images/$imageName.PNG')),
          Gap(
            GetSize.getScreenWidthDevice(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                fundName,
                style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          )
        ],
      ),
    );
  }
}
