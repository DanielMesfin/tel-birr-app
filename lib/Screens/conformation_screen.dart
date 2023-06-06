import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:my_tel_birr/ReusableComponents/reusabel_otp_input.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_round_button.dart';

class ConformationScreen extends StatefulWidget {
  const ConformationScreen({Key? key}) : super(key: key);

  @override
  State<ConformationScreen> createState() => _ConformationScreenState();
}

class _ConformationScreenState extends State<ConformationScreen> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: Styles.appGrdient),
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: GetSize.getScreenHeightDevice(25),
                horizontal: GetSize.getScreenWidthDevice(10)),
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: GetSize.getScreenWidthDevice(5),
                  vertical: GetSize.getScreenHeightDevice(18),
                ),
                width: double.infinity,
                height: GetSize.getScreenHeightDevice(300),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurStyle: BlurStyle.solid,
                        blurRadius: 4,
                        color: Colors.grey,
                        offset: Offset(0.0, 0.90))
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      'Please Enter Your PIN code to Continue.',
                      style: Styles.labelBoldBlackText,
                    ),
                    Gap(
                      GetSize.getScreenHeightDevice(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OtpInput(_fieldOne, true), // auto focus
                        OtpInput(_fieldTwo, false),
                        OtpInput(_fieldThree, false),
                        OtpInput(_fieldFour, false),
                        OtpInput(_fieldThree, false),
                        OtpInput(_fieldFour, false)
                      ],
                    ),
                    Gap(
                      GetSize.getScreenHeightDevice(20),
                    ),
                    const Expanded(
                      child: ReuseMaterialButton(
                          linearGradient: Styles.buttonGrdient,
                          textLabel: 'Confirm'),
                    ),
                    Gap(GetSize.getScreenWidthDevice(20)),
                    Expanded(
                      child: ReuseMaterialButton(
                          onPressInput: () {
                            Navigator.pop(context);
                          },
                          textColor: const Color(0xfff39733),
                          enabled: true,
                          linearGradient: Styles.defaultButtonGrdient,
                          textLabel: 'Cancel'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
