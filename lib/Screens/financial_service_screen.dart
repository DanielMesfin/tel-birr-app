import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/ReusableComponents/reuseable_icon.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'tel_mela.dart';
import 'package:my_tel_birr/ReusableComponents/profile_avater.dart';
import 'tel_sansuk.dart';

class FinancialService extends StatelessWidget {
  const FinancialService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(gradient: Styles.appGrdient),
          child: ListView(
            padding: EdgeInsets.symmetric(
                vertical: GetSize.getScreenHeightDevice(15),
                horizontal: GetSize.getScreenWidthDevice(15)),
            scrollDirection: Axis.vertical,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableIcon(
                    iconData: Icons.arrow_back_ios_new_sharp,
                    iconCallBack: () {
                      Navigator.pop(context);
                    },
                  ),
                  const ProfileAvatar()
                ],
              ),
              Gap(
                GetSize.getScreenHeightDevice(5),
              ),
              Container(
                width: double.infinity,
                height: 220,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/financial.PNG'),
                      fit: BoxFit.cover),
                ),
              ),
              Gap(
                GetSize.getScreenHeightDevice(5),
              ),
              const Text(
                'Financial  Services',
                style: Styles.noticeLabel,
              ),
              Gap(
                GetSize.getScreenHeightDevice(10),
              ),
              ServiceCard(
                imageName: 'mela.PNG',
                buttonName: 'mela',
                serviceName: 'Micro Credit service',
                callBackService: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const TelMela()));
                },
              ),
              Gap(
                GetSize.getScreenHeightDevice(10),
              ),
              ServiceCard(
                imageName: 'endekiso.PNG',
                serviceName: 'Overdraft Service',
                buttonName: 'endekise',
                callBackService: () {},
              ),
              Gap(
                GetSize.getScreenHeightDevice(10),
              ),
              ServiceCard(
                imageName: 'sanduk.PNG',
                buttonName: 'sanduq',
                serviceName: 'Saving Service',
                callBackService: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TelSanduk()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final Function()? callBackService;
  final String imageName;
  final String buttonName;
  final String serviceName;
  const ServiceCard(
      {super.key,
      required this.imageName,
      required this.callBackService,
      required this.buttonName,
      required this.serviceName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: GetSize.getScreenHeightDevice(90),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 0.5,
          color: const Color(0xff2e6fef),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: GetSize.getScreenWidthDevice(100),
            height: GetSize.getScreenHeightDevice(56),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/$imageName'),
                    fit: BoxFit.fitWidth)),
          ),
          Gap(
            GetSize.getScreenWidthDevice(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                serviceName,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Gap(
                GetSize.getScreenHeightDevice(10),
              ),
              InkWell(
                onTap: callBackService,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: GetSize.getScreenWidthDevice(10),
                  ),
                  width: GetSize.getScreenWidthDevice(120),
                  height: GetSize.getScreenHeightDevice(35),
                  decoration: const BoxDecoration(
                    color: Color(0xff0b1fe5),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        buttonName,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
