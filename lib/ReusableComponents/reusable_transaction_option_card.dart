import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionOptionCard extends StatelessWidget {
  final Function()? cardCallBack;
  final IconData fAIcon;
  final String transactionName;
  const TransactionOptionCard({
    super.key,
    required this.fAIcon,
    required this.transactionName,
    required this.cardCallBack
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: cardCallBack,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: GetSize.getScreenHeightDevice(3),
            horizontal: GetSize.getScreenWidthDevice(2)
        ),
        width: GetSize.getScreenWidthDevice(77),
        height: GetSize.getScreenHeightDevice(65),
        decoration:const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color(0xff219a60),
                  blurRadius: 1
              ),
              BoxShadow(
                  color: Color(0xff219a60),
                  blurRadius: 1
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(fAIcon,color: Colors.black87,),
            Gap(GetSize.getScreenHeightDevice(3),),
            Text(transactionName,style:const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400
            ),)
          ],
        ),
      ),
    );
  }
}
