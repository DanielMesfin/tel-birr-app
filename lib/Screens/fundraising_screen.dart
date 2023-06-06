import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:my_tel_birr/ReusableComponents/fundraising_lists.dart';
import 'package:my_tel_birr/ReusableComponents/reuseable_icon.dart';

class Fundraising extends StatelessWidget {
  const Fundraising({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            const Image(image: AssetImage('images/fundrising.PNG')),
            Gap(
              GetSize.getScreenHeightDevice(65),
            ),
            const Text(
              'Fundraising',
              style: Styles.noticeLabel,
              textAlign: TextAlign.start,
            ),
            Gap(
              GetSize.getScreenHeightDevice(15),
            ),
            const FundraisingList(
              fundName: 'GERD',
              imageName: 'dam',
            ),
            Gap(
              GetSize.getScreenHeightDevice(10),
            ),
            const FundraisingList(
              fundName: 'FDRE Minster of Education',
              imageName: 'education',
            ),
            Gap(
              GetSize.getScreenHeightDevice(10),
            ),
            const FundraisingList(
              fundName: 'FDRE Defense Force',
              imageName: 'police',
            ),
            Gap(
              GetSize.getScreenHeightDevice(10),
            ),
            const FundraisingList(
              fundName: 'Ethiopian Red Cross Society',
              imageName: 'health',
              bgColor: Color(0xffe85959),
            ),
            Gap(
              GetSize.getScreenHeightDevice(10),
            ),
            const FundraisingList(
              fundName: 'Merry Joy',
              imageName: 'dam',
            ),
            Gap(
              GetSize.getScreenHeightDevice(10),
            ),
            const FundraisingList(
              fundName: 'FDRE Minster of Health',
              imageName: 'health1',
            ),
            Gap(
              GetSize.getScreenHeightDevice(35),
            ),
          ],
        ),
      ),
    );
  }
}
