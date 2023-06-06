import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_round_button.dart';
import 'package:qr_flutter/qr_flutter.dart';
import  'sacnner_screen.dart';
import 'package:my_tel_birr/ReusableComponents/reuseable_icon.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_personal_profile.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_slide_amount.dart';

class ScanQR extends StatefulWidget {
  const ScanQR({Key? key}) : super(key: key);

  @override
  State<ScanQR> createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {
  RangeValues currentRangeValues = const RangeValues(0, 25);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: Styles.appGrdient),
          child: ListView(
            padding: EdgeInsets.symmetric(
              vertical: GetSize.getScreenHeightDevice(15),
              horizontal: GetSize.getScreenWidthDevice(10),
            ),
            children: [
              Row(
                children: [
                  ReusableIcon(
                    iconData: Icons.arrow_back_ios_new_sharp,
                    iconCallBack: () {
                      Navigator.pop(context);
                    },
                  ),
                  Gap(
                    GetSize.getScreenWidthDevice(15),
                  ),
                  const Text(
                    'Receive Payment',
                    style: Styles.noticeLabel,
                  )
                ],
              ),
              Gap(
                GetSize.getScreenHeightDevice(10),
              ),
              const PersonalProfile(),
              Gap(
                GetSize.getScreenHeightDevice(15),
              ),
              const Text(
                'Scan QR',
                style: Styles.noticeLabel,
                textAlign: TextAlign.start,
              ),
              Gap(
                GetSize.getScreenHeightDevice(7),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: GetSize.getScreenWidthDevice(40),
                    vertical: GetSize.getScreenHeightDevice(10)),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: GetSize.getScreenHeightDevice(5),
                      horizontal: GetSize.getScreenWidthDevice(10)),
                  width: GetSize.getScreenWidthDevice(250),
                  height: GetSize.getScreenHeightDevice(267),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1.5,
                            color: Color(0xffa2dcea),
                            spreadRadius: 1,
                            blurStyle: BlurStyle.solid,
                        )
                      ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: GetSize.getScreenWidthDevice(200),
                        height: GetSize.getScreenHeightDevice(200),
                        child: QrImageView(data: ''),
                      ),
                      Gap(
                        GetSize.getScreenHeightDevice(5),
                      ),
                      const ReuseMaterialButton(
                          linearGradient: Styles.defaultButtonGrdient,
                          enabled: false,
                          textLabel: 'Save',
                      ),
                    ],
                  ),
                ),
              ),
              Gap(
                GetSize.getScreenHeightDevice(5),
              ),
              SlideAmountCard(currentRangeValues: currentRangeValues),
              Gap(
                GetSize.getScreenHeightDevice(15),
              ),
               ReuseMaterialButton(
                onPressInput: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanData(),),);
                },
                  linearGradient: Styles.buttonGrdient,
                  textLabel: 'Apply Deposit Voucher')
            ],
          ),
        ),
      ),
    );
  }
}
