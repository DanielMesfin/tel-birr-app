import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Screens/registration_screen.dart';
import 'login_screen.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_list_tile.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_divider.dart';
import 'package:my_tel_birr/ReusableComponents/profile_avater.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/ReusableComponents/reuseable_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    final double height = GetSize.getSizeHeight(context);
    final double width = GetSize.getSizeWidth(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: Styles.appGrdient),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: height * 0.58,
                        decoration: const BoxDecoration(
                            gradient: Styles.blueContainerGrdient),
                        child: Column(
                          children: [
                            Gap(
                              GetSize.getScreenHeightDevice(15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ReusableIcon(
                                  iconData: Icons.arrow_back_ios_new_sharp,
                                  iconCallBack: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                Expanded(child: Container())
                              ],
                            ),
                            Gap(
                              GetSize.getScreenHeightDevice(10),
                            ),
                            const ProfileAvatar(),
                            Gap(
                              GetSize.getScreenHeightDevice(10),
                            ),
                            Text(
                              'Yeabsira Getahun',
                              style: Styles.boldTextCard.copyWith(fontSize: 18),
                            ),
                            const Text(
                              '0900000000',
                              style: Styles.boldTextCard,
                            ),
                            Gap(
                              GetSize.getScreenHeightDevice(5),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                  width: GetSize.getScreenWidthDevice(100),
                                  height: GetSize.getScreenHeightDevice(35),
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                      color: Color(0xff0b35dc)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Icon(
                                        Icons.logout_rounded,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'LogOut',
                                        style: Styles.buttonLabelStyle,
                                      )
                                    ],
                                  )),
                            ),
                            Gap(
                              GetSize.getScreenHeightDevice(5),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            color: Colors.white60,
                            height: height * 0.8,
                          ),
                          Positioned(
                            bottom: height * 0.01,
                            right: height * 0.023,
                            left: height * 0.023,
                            top: height * 0.23,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'App Setting ',
                                      style: Styles.noticeLabel,
                                      textAlign: TextAlign.start,
                                    ),
                                    Expanded(
                                      child: Container(),
                                    )
                                  ],
                                ),
                                Gap(
                                  GetSize.getScreenHeightDevice(8),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        GetSize.getScreenWidthDevice(15),
                                    vertical: GetSize.getScreenHeightDevice(8),
                                  ),
                                  width: double.infinity,
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
                                    children: const [
                                      ListTileData(
                                        leaddingData: FontAwesomeIcons.question,
                                        titleData: 'FAQ',
                                      ),
                                      DividerLine(),
                                      ListTileData(
                                        leaddingData: Icons.messenger,
                                        titleData: 'Feedbacks & Contact',
                                      ),
                                      DividerLine(),
                                      ListTileData(
                                        leaddingData: Icons.info,
                                        titleData: 'About',
                                      ),
                                      DividerLine(),
                                      ListTileData(
                                        leaddingData: Icons.update_rounded,
                                        titleData: 'Check Update',
                                      ),
                                    ],
                                  ),
                                ),
                                Gap(height * 0.04),
                                Column(
                                  children: const [
                                    Text(
                                      'Version 2.0',
                                      style: Styles.labelBoldBlackText,
                                    ),
                                    Text(
                                      'Ethiotelecom \u00a9 2015 E.C',
                                      style: Styles.copyRight,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    left: width * 0.07,
                    right: width * 0.07,
                    top: height * 0.39,
                    bottom: height * 0.58,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: GetSize.getScreenWidthDevice(15),
                        vertical: GetSize.getScreenHeightDevice(7),
                      ),
                      width: double.infinity,
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
                          ListTileData(
                            leaddingData: Icons.account_circle,
                            titleData: 'Account Information',
                            callBack: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegistrationScreen(),
                                ),
                              );
                            },
                          ),
                          const DividerLine(),
                          ListTileData(
                            leaddingData: Icons.language_rounded,
                            titleData: 'Language',
                            callBack: () {},
                          ),
                          const DividerLine(),
                          ListTileData(
                            callBack: () {},
                            leaddingData: Icons.security_rounded,
                            titleData: 'Security',
                          ),
                          const DividerLine(),
                          ListTileData(
                            callBack: () {},
                            leaddingData: Icons.mobile_screen_share,
                            titleData: 'Invite Friends',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
