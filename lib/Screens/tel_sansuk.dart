import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:my_tel_birr/ReusableComponents/reuseable_icon.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_round_button.dart';

class TelSanduk extends StatelessWidget {
  const TelSanduk({Key? key}) : super(key: key);

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
              Gap(
                GetSize.getScreenHeightDevice(50),
              ),
              Container(
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('images/sandukBg.PNG')),
                ),
              ),
              Gap(
                GetSize.getScreenHeightDevice(20),
              ),
              const Text(
                'Telebirr Sanduq',
                style: Styles.labelBoldBlackText,
              ),
              Gap(
                GetSize.getScreenHeightDevice(20),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: GetSize.getScreenWidthDevice(15),
                    vertical: GetSize.getScreenHeightDevice(15)),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  color: Colors.blueAccent,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'mela',
                              style: Styles.boldTextCard,
                            ),
                            Text(
                              'type',
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
                          children: const [
                            Text(
                              'Limit',
                              style: Styles.italicText,
                            ),
                            Text('type cost '),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Gap(
                GetSize.getScreenHeightDevice(30),
              ),
              Row(
                children: [
                  const Expanded(
                    child: ReuseMaterialButton(
                        linearGradient: Styles.buttonGrdient,
                        textLabel: 'Deposit'),
                  ),
                  Gap(GetSize.getScreenWidthDevice(20)),
                  const Expanded(
                    child: ReuseMaterialButton(
                        enabled: true,
                        linearGradient: Styles.yellowishGrdient,
                        textLabel: 'Withdraw',
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
