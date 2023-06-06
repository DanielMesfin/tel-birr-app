import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuickAccessCard extends StatelessWidget {
  final Function()? cardCallBack;
  final String quickAccessName;
  final String quickAccessImage;
  const QuickAccessCard({
    super.key,
    required this.quickAccessName,
    required this.quickAccessImage,
    required this.cardCallBack
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: cardCallBack,
      child: Container(
        margin: EdgeInsets.only(top: GetSize.getScreenHeightDevice(5),
            bottom: GetSize.getScreenHeightDevice(5),
        ),
        padding: EdgeInsets.symmetric(
            horizontal: GetSize.getScreenWidthDevice(4)
        ),
        width: GetSize.getScreenWidthDevice(70),
        height: GetSize.getScreenHeightDevice(50),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 1.5
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('images/${quickAccessImage}'),),
            Gap(GetSize.getScreenHeightDevice(2),),
            Text(quickAccessName,style:const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400
            ),
            )
          ],
        ),
      ),
    );
  }
}
