import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:my_tel_birr/ReusableComponents/reuseable_icon.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_round_button.dart';
import 'package:my_tel_birr/ReusableComponents/flating_container.dart';
class AgentInformation extends StatelessWidget {
  const AgentInformation({Key? key}) : super(key: key);

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
                GetSize.getScreenHeightDevice(20),
              ),
              Container(
                width: double.infinity,
                height: GetSize.getScreenHeightDevice(200),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('images/agent_informatipon.PNG')),
                ),
              ),
              Gap(
                GetSize.getScreenHeightDevice(20),
              ),
              const Text(
                'Agent Information',
                style: Styles.labelBoldBlackText,
              ),
              Gap(
                GetSize.getScreenHeightDevice(20),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: GetSize.getScreenWidthDevice(15),
                  vertical: GetSize.getScreenHeightDevice(15),
                ),
                width: double.infinity,
                height: GetSize.getScreenHeightDevice(273),
                decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3.5,
                          blurStyle: BlurStyle.solid,
                          color: Color(0xff81e2c5))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Agent ID',
                      style: Styles.labelBoldBlackText,
                    ),
                    Gap(
                      GetSize.getScreenHeightDevice(5),
                    ),
                    TextField(
                      decoration: Styles.kInputDecoration
                          .copyWith(hintText: 'Enter Agent ID'),
                      textAlign: TextAlign.start,
                    ),
                    Gap(
                      GetSize.getScreenHeightDevice(15),
                    ),
                    const Text('Operator ID', style: Styles.labelBoldBlackText),
                    Gap(
                      GetSize.getScreenHeightDevice(5),
                    ),
                    TextField(
                      decoration:
                          Styles.kInputDecoration.copyWith(hintText: 'Enter Operator ID'),
                      textAlign: TextAlign.start,
                    ),
                    Gap(
                      GetSize.getScreenHeightDevice(10),
                    ),
                    const Text('Amount', style: Styles.labelBoldBlackText),
                    Gap(
                      GetSize.getScreenHeightDevice(5),
                    ),
                    TextField(
                      decoration:
                          Styles.kInputDecoration.copyWith(hintText: 'Amount'),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Gap(
                GetSize.getScreenHeightDevice(15),
              ),
              const ReuseMaterialButton(
                  linearGradient: Styles.buttonGrdient, textLabel: 'Confirm')
            ],
          ),
        ),
        floatingActionButton: const FloatingContainer(),
      ),

    );
  }
}
