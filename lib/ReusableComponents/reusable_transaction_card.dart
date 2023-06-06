import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: GetSize.getScreenHeightDevice(50),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.5, color: const Color(0xff2e6fef)),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(
            GetSize.getScreenWidthDevice(10),
          ),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: GetSize.getScreenHeightDevice(5),
                  horizontal: GetSize.getScreenWidthDevice(5)),
              width: GetSize.getScreenWidthDevice(40),
              height: GetSize.getScreenHeightDevice(40),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                  color: Color(0xff86e7ae)),
              child: const Center(
                child: FaIcon(
                  FontAwesomeIcons.mobileScreen,
                  color: Color(0xff06821e),
                ),
              )),
          Gap(
            GetSize.getScreenWidthDevice(10),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Bought 1GB Daily Package',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              Gap(
                GetSize.getScreenHeightDevice(3),
              ),
              const Text(
                '10-12-2023 11:45 AM',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              )
            ],
          ),
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                '-35',
                style: TextStyle(
                    color: Color(0xffef5b5b),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text('.00',style: TextStyle(
                  color: Color(0xffef5b5b),
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              ),
            ],
          ),
          Gap(
            GetSize.getScreenWidthDevice(10),
          ),
        ],
      ),
    );
  }
}
