import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: GetSize.getScreenHeightDevice(70),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1.5, color: const Color(0xff2e6fef)),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(
            GetSize.getScreenWidthDevice(15),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: GetSize.getScreenHeightDevice(5),
                horizontal: GetSize.getScreenWidthDevice(5)),
            width: GetSize.getScreenWidthDevice(50),
            height: GetSize.getScreenHeightDevice(50),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: Color(0xff82b3fa)),
            child: const CircleAvatar(
                foregroundImage: AssetImage('images/myboy.PNG')),
          ),
          Gap(
            GetSize.getScreenWidthDevice(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Yeabsira Getahun',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              Gap(
                GetSize.getScreenHeightDevice(3),
              ),
              const Text(
                '0900****00',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
