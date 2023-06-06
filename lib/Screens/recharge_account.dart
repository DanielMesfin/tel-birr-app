import 'package:flutter/material.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_personal_profile.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_round_button.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:my_tel_birr/ReusableComponents/reuseable_icon.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_slide_amount.dart';
import 'package:my_tel_birr/ReusableComponents/package_type.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_tel_birr/ReusableComponents/input_cell.dart';
import 'package:my_tel_birr/ReusableComponents/package_detail.dart';

class Recharge extends StatefulWidget {
  const Recharge({Key? key}) : super(key: key);

  @override
  State<Recharge> createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  String? packageType = 'a';
  @override
  Widget build(BuildContext context) {
    RangeValues currentRangeValues = const RangeValues(0, 45);
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: GetSize.getScreenWidthDevice(15),
            vertical: GetSize.getScreenHeightDevice(5),
          ),
          children: [
            Gap(
              GetSize.getScreenHeightDevice(15),
            ),
            Row(
              children: [
                ReusableIcon(
                  iconData: Icons.arrow_back_ios_new,
                  iconCallBack: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(child: Container())
              ],
            ),
            Gap(
              GetSize.getScreenHeightDevice(65),
            ),
            const Text(
              'Recharge account',
              style: Styles.noticeLabel,
              textAlign: TextAlign.start,
            ),
            Gap(
              GetSize.getScreenHeightDevice(15),
            ),
            Row(
              children: [
                const Expanded(
                  child: ReuseMaterialButton(
                      linearGradient: Styles.blueGrdient, textLabel: 'Self'),
                ),
                Gap(GetSize.getScreenWidthDevice(20)),
                const Expanded(
                  child: ReuseMaterialButton(
                      enabled: false,
                      linearGradient: Styles.defaultButtonGrdient,
                      textLabel: 'Other'),
                )
              ],
            ),
            Gap(
              GetSize.getScreenHeightDevice(15),
            ),
            //TODO put dynamic data
            const PersonalProfile(),
            Gap(
              GetSize.getScreenHeightDevice(35),
            ),
            const Text(
              'Recharge amount',
              style: Styles.noticeLabel,
              textAlign: TextAlign.start,
            ),
            Gap(
              GetSize.getScreenHeightDevice(15),
            ),
            Row(
              children: [
                Expanded(
                  child: ReuseMaterialButton(
                      onPressInput: () {
                        setState(() {
                          packageType = 'a';
                        });
                      },
                      enabled: packageType == 'a' ? null : false,
                      linearGradient: packageType == 'a'
                          ? Styles.blueGrdient
                          : Styles.defaultButtonGrdient,
                      textLabel: 'Airtime'),
                ),
                Gap(GetSize.getScreenWidthDevice(20)),
                Expanded(
                  child: ReuseMaterialButton(
                    onPressInput: () {
                      setState(() {
                        packageType = 'p';
                      });
                    },
                    enabled: packageType == 'p' ? null : false,
                    linearGradient: packageType == 'p'
                        ? Styles.blueGrdient
                        : Styles.defaultButtonGrdient,
                    textLabel: 'Package',
                  ),
                )
              ],
            ),
            Gap(
              GetSize.getScreenHeightDevice(25),
            ),
            // TOD Display the data on the container
            packageType == 'a'
                ? SlideAmountCard(currentRangeValues: currentRangeValues)
                : Column(
                    children: [
                      const Text(
                        'Select Package Type',
                        style: Styles.labelBoldBlackText,
                      ),
                      Gap(
                        GetSize.getScreenHeightDevice(10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PackageTypeOptionCard(
                              iconbg: const Color(0xff86e5d6),
                              labelbg: const Color(0xff86e5d6),
                              conatnerbg: Colors.white,
                              fAIcon: Icons.phone,
                              packageName: 'Voice',
                              cardCallBack: () {}),
                          PackageTypeOptionCard(
                              fAIcon: FontAwesomeIcons.download,
                              conatnerbg: const Color(0xffe79776),
                              iconbg: Colors.white,
                              labelbg: Colors.white,
                              packageName: 'Data',
                              cardCallBack: () {}),
                          PackageTypeOptionCard(
                              conatnerbg: Colors.white,
                              iconbg: const Color(0xffee9b83),
                              labelbg: const Color(0xffee9b83),
                              fAIcon: FontAwesomeIcons.message,
                              packageName: 'Text',
                              cardCallBack: () {}),
                          PackageTypeOptionCard(
                              iconbg: const Color(0xff77cde8),
                              labelbg: const Color(0xff77cde8),
                              conatnerbg: Colors.white,
                              fAIcon: FontAwesomeIcons.message,
                              packageName: 'Voice\n+Data',
                              cardCallBack: () {})
                        ],
                      ),
                      Gap(
                        GetSize.getScreenHeightDevice(5),
                      ),
                      Row(
                        children: const [
                          InputCell(
                            inputLabel: "",
                            inputPlaceholder: "Other Packages",
                            surffixIcon: IconDataSolid(0xf078),
                          ),
                        ],
                      ),
                      Gap(
                        GetSize.getScreenHeightDevice(10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PackageDetailCard(
                            cost: '3',
                            amount: '40',
                            cardCallBack: () {},
                          ),
                          PackageDetailCard(
                            cardCallBack: () {},
                            cost: '5',
                            amount: '85',
                          ),
                          PackageDetailCard(
                            cardCallBack: () {},
                            cost: '12',
                            amount: '220',
                          ),
                          PackageDetailCard(
                            cardCallBack: () {},
                            cost: '25',
                            amount: '550',
                          )
                        ],
                      )
                    ],
                  ),
            Gap(
              GetSize.getScreenHeightDevice(20),
            ),
            const ReuseMaterialButton(
                linearGradient: Styles.buttonGrdient, textLabel: 'Buy Airtime')
          ],
        ),
      ),
    );
  }
}
