import 'package:flutter/material.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:gap/gap.dart';

class ReusableRewardCard extends StatelessWidget {
  final Color cardColor;
  final Function()? cardCallBack;
  const ReusableRewardCard(
      {super.key, required this.cardColor, required this.cardCallBack});
  @override
  Widget build(BuildContext context) {
    double widthData = GetSize.getSizeWidth(context);
    return InkWell(
      onTap: cardCallBack,
      child: Container(
        width: widthData * 0.56,
        padding: EdgeInsets.symmetric(
            horizontal: GetSize.getScreenWidthDevice(10),
            vertical: GetSize.getScreenHeightDevice(15)),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          color: cardColor,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'ETB',
                  style: Styles.boldTextCard.copyWith(color: Colors.orange),
                ),
                Gap(
                  GetSize.getScreenWidthDevice(3),
                ),
                Text(
                  '1270.00',
                  style: Styles.boldTextCard.copyWith(fontSize: 22),
                )
              ],
            ),
            Gap(
              GetSize.getScreenHeightDevice(15),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.card_giftcard_rounded,
                  color: Colors.orange,
                ),
                Gap(
                  GetSize.getScreenWidthDevice(5),
                ),
                Text('15.00',
                    style: Styles.boldTextCard
                        .copyWith(color: Colors.orange, fontSize: 23)),
                Gap(
                  GetSize.getScreenWidthDevice(5),
                ),
                Text(
                  'Rewarded',
                  style: Styles.boldTextCard.copyWith(color: Colors.orange),
                )
              ],
            ),
            Gap(
              GetSize.getScreenHeightDevice(5),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: GetSize.getScreenWidthDevice(15)),
              height: 2,
              color: Colors.white,
            ),
            Gap(
              GetSize.getScreenHeightDevice(5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.remove_red_eye_rounded,
                  color: Colors.white,
                ),
                Gap(
                  GetSize.getScreenWidthDevice(5),
                ),
                const Text(
                  'View Balance',
                  style: Styles.boldTextCard,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
