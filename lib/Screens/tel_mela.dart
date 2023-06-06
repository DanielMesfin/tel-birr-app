import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:my_tel_birr/ReusableComponents/reuseable_icon.dart';
import 'dail_mela.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_mela_card.dart';

class TelMela extends StatelessWidget {
  const TelMela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: Styles.appGrdient),
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: GetSize.getScreenWidthDevice(15),
              vertical: GetSize.getScreenHeightDevice(10),
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
                'Telebirr Mela',
                style: Styles.labelBoldBlackText,
              ),
              Gap(
                GetSize.getScreenHeightDevice(12),
              ),
              Row(
                children: [
                  ReusableMelaCard(
                    type: 'Daily',
                    typeCost: 'ETB2,000',
                    cardColor: Colors.blue,
                    cardCallBack: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DayMela(),
                        ),
                      );
                    },
                  ),
                  Gap(
                    GetSize.getScreenWidthDevice(15),
                  ),
                  ReusableMelaCard(
                    type: 'Weekly',
                    typeCost: 'ETB5,000',
                    cardColor: Colors.redAccent,
                    cardCallBack: () {

                    },
                  ),
                ],
              ),
              Gap(
                GetSize.getScreenHeightDevice(15),
              ),
              Row(
                children: [
                  ReusableMelaCard(
                    type: 'Monthly',
                    typeCost: 'ETB10,000',
                    cardColor: Colors.green,
                    cardCallBack: () {},
                  ),
                  Gap(
                    GetSize.getScreenWidthDevice(15),
                  ),
                  ReusableMelaCard(
                    type: 'Medaresha',
                    typeCost: 'ETB10-30k',
                    cardColor: Colors.black45,
                    cardCallBack: () {},
                  ),
                ],
              ),
              Gap(
                GetSize.getScreenHeightDevice(15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
