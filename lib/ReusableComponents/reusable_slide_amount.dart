import 'package:flutter/material.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'reuseable_icon.dart';
import 'package:gap/gap.dart';
import 'reusable_count_card.dart';
import 'reusable_round_button.dart';

class SlideAmountCard extends StatelessWidget {
  const SlideAmountCard({
    super.key,
    required this.currentRangeValues,
  });

  final RangeValues currentRangeValues;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: GetSize.getScreenWidthDevice(15),
        vertical: GetSize.getScreenHeightDevice(15),
      ),
      width: double.infinity,
      height: GetSize.getScreenHeightDevice(200),
      decoration: const BoxDecoration(
          gradient: Styles.blueWhiteBlueGrdient,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 3.5,
                blurStyle: BlurStyle.solid,
                color: Color(0xff81e2c5))
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ReusableIcon(
                iconData: Icons.add,
                other: true,
                iconCallBack: () {},
              ),
              Gap(
                GetSize.getScreenWidthDevice(15),
              ),
              Container(
                width: GetSize.getScreenWidthDevice(150),
                height: GetSize.getScreenHeightDevice(50),
                decoration: BoxDecoration(
                  color: const Color(0xffd2e5ea).withOpacity(0.4),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          '100',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '.00',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: GetSize.getScreenHeightDevice(10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Gap(
                GetSize.getScreenWidthDevice(15),
              ),
              ReusableIcon(
                iconData: Icons.minimize,
                other: true,
                iconCallBack: () {},
              )
            ],
          ),
          Gap(
            GetSize.getScreenHeightDevice(10),
          ),
          Container(
            width: double.infinity,
            height: GetSize.getScreenHeightDevice(20),
            padding: EdgeInsets.symmetric(
              horizontal: GetSize.getScreenWidthDevice(0),
              vertical: GetSize.getScreenHeightDevice(3),
            ),
            child: RangeSlider(
              values: currentRangeValues,
              max: 100,
              divisions: 10,
              activeColor: Colors.redAccent,
              inactiveColor: Colors.grey,
              labels: RangeLabels(
                currentRangeValues.start.round().toString(),
                currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                //TOD CHANGE THE CLASS TO STATeFULL
                // setState(() {
                //   _currentRangeValues = values;
                // });
              },
            ),
          ),
          Gap(
            GetSize.getScreenHeightDevice(8),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CountCard(
                countNumber: '1',
              ),
              CountCard(
                countNumber: '5',
              ),
              CountCard(
                countNumber: '10',
              ),
              CountCard(
                countNumber: '25',
              ),
              CountCard(
                countNumber: '50',
              ),
              CountCard(
                countNumber: '100',
              ),
              CountCard(
                countNumber: '500',
              ),
            ],
          ),
          Gap(
            GetSize.getScreenHeightDevice(10),
          ),
          const ReuseMaterialButton(
              linearGradient: Styles.buttonGrdient, textLabel: 'Reset')
        ],
      ),
    );
  }
}
