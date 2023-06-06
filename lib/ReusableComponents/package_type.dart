import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PackageTypeOptionCard extends StatelessWidget {
  final Function()? cardCallBack;
  final Color? conatnerbg;
  final Color? iconbg;
  final Color? labelbg;
  final IconData fAIcon;
  final String packageName;
  const PackageTypeOptionCard(
      {super.key,
      this.conatnerbg,
      this.iconbg,
      this.labelbg,
      required this.fAIcon,
      required this.packageName,
      required this.cardCallBack});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: cardCallBack,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: GetSize.getScreenHeightDevice(3),
            horizontal: GetSize.getScreenWidthDevice(4)),
        width: GetSize.getScreenWidthDevice(65),
        height: GetSize.getScreenHeightDevice(85),
        decoration: BoxDecoration(
            color: conatnerbg,
            boxShadow: const [
              BoxShadow(color: Color(0xff219a60), blurRadius: 1),
              BoxShadow(color: Color(0xff219a60), blurRadius: 1),
            ],
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: iconbg,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              padding: const EdgeInsets.all(5),
              child: FaIcon(
                fAIcon,
                color: Colors.black87,
              ),
            ),
            Gap(
              GetSize.getScreenHeightDevice(3),
            ),
            Container(
              decoration: BoxDecoration(
                color: labelbg,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              padding: const EdgeInsets.all(5),
              child: Text(
                packageName,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}
