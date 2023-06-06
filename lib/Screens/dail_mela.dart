import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:my_tel_birr/ReusableComponents/reuseable_icon.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_mela_card.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_round_button.dart';

class DayMela extends StatelessWidget {
  const DayMela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: Styles.appGrdient),
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: GetSize.getScreenWidthDevice(15),
              vertical: GetSize.getScreenHeightDevice(20),
            ),
            children: [
              Row(
                children: [
                  ReusableIcon(
                    iconData: Icons.arrow_back_ios_new_rounded,
                    iconCallBack: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              Container(
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('images/telmela.PNG')),
                ),
              ),
              Gap(
                GetSize.getScreenHeightDevice(12),
              ),
              const Text(
                'Mela Day',
                style: Styles.labelBoldBlackText,
              ),
              Gap(
                GetSize.getScreenHeightDevice(12),
              ),
              const ReusableMelaCard(
                cardCallBack: null,
                type: 'Daily',
                typeCost: 'ETB2,000',
                cardColor: Color(0xff1b0f7a),
              ),
              Gap(
                GetSize.getScreenHeightDevice(15),
              ),
              ReusableInformationCard(
                cardCallBack: () {},
                cardColor: Colors.white,
                type: 'Facilitation Free',
                typeCost: 'Penalty after due date 1% per Day',
              ),
              Gap(
                GetSize.getScreenHeightDevice(15),
              ),
              const ReuseMaterialButton(
                  linearGradient: Styles.buttonGrdient,
                  textLabel: 'Apply Credit')
            ],
          ),
        ),
      ),
    );
  }
}


class ReusableInformationCard extends StatelessWidget {
  final String type;
  final String typeCost;
  final Color cardColor;
  final Function()? cardCallBack;
  const ReusableInformationCard(
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
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                    ),
                    Gap(
                      GetSize.getScreenWidthDevice(20),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          type,
                          style: Styles.blueText,
                        ),
                        Text(
                          "1%",
                          style: Styles.blueText.copyWith(fontSize: 17),
                        )
                      ],
                    )
                  ],
                ),
                Gap(
                  GetSize.getScreenHeightDevice(10),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: GetSize.getScreenWidthDevice(15)),
                  height: 2,
                  color: Colors.blue,
                ),
                Gap(
                  GetSize.getScreenHeightDevice(10),
                ),
                Text(typeCost, style: Styles.blueText)
              ],
            )),
      ),
    );
  }
}
