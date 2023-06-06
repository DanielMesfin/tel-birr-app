import 'package:flutter/material.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:gap/gap.dart';

class ReusableMelaCard extends StatelessWidget {
  final String type;
  final String typeCost;
  final Color cardColor;
  final Function()? cardCallBack;
  const ReusableMelaCard(
      {super.key,
      required this.type,
      required this.cardColor,
      required this.typeCost,
      required this.cardCallBack});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: cardCallBack,
        
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: GetSize.getScreenWidthDevice(15),
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'mela',
                        style: Styles.boldTextCard,
                      ),
                      Text(
                        type,
                        style: Styles.boldTextCard,
                      ),
                    ],
                  )
                ],
              ),
              Gap(
                GetSize.getScreenHeightDevice(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Limit',
                        style: Styles.italicText,
                      ),
                      Text(typeCost,style: const TextStyle(
                        color: Colors.white
                      ),),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
