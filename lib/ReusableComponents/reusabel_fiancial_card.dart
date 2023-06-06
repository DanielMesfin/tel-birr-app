import 'package:flutter/material.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:gap/gap.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableFinancialCard extends StatelessWidget {
  final Color cardColor;
  final Function()? cardCallBack;
  const ReusableFinancialCard(
      {super.key, required this.cardColor, required this.cardCallBack});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: cardCallBack,
        child: Container(
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Gap(GetSize.getScreenHeightDevice(15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  FaIcon(
                    FontAwesomeIcons.boxOpen,
                    color: Colors.white,
                  ),
                ],
              ),
              Gap(
                GetSize.getScreenHeightDevice(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Financial',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              Gap(
                GetSize.getScreenHeightDevice(2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Services',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
