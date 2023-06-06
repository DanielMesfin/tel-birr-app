import 'package:flutter/material.dart';
import 'reusable_divider.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Constants/style.dart';

class PackageDetailCard extends StatelessWidget {
  final Function()? cardCallBack;
  final String cost;
  final String amount;
  const PackageDetailCard(
      {super.key,
      required this.amount,
      required this.cost,
      required this.cardCallBack});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: cardCallBack,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: GetSize.getScreenHeightDevice(3),
            horizontal: GetSize.getScreenWidthDevice(4)),
        width: GetSize.getScreenWidthDevice(68),
        height: GetSize.getScreenHeightDevice(80),
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Color(0xff219a60), blurRadius: 1),
              BoxShadow(color: Color(0xff219a60), blurRadius: 1),
            ],
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Daily',
              style: Styles.boldTextCard.copyWith(color: Colors.black87),
            ),
            const DividerLine(),
            const Text(
              'ETB',
              style: TextStyle(
                  fontSize: 8,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  cost,
                  style: Styles.boldTextCard.copyWith(color: Colors.black87),
                ),
                const Text(
                  '.00',
                  style: TextStyle(
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  color: Color(0xffdebc71)),
              padding: const EdgeInsets.all(5),
              child: Text(
                '$amount MB',
                style: Styles.buttonLabelStyle
                    .copyWith(color: Colors.black, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
