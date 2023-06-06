import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_round_button.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Screens/home_screen.dart';
import 'package:my_tel_birr/Screens/registration_screen.dart';
import 'conformation_screen.dart';
import 'package:my_tel_birr/ReusableComponents/input_cell.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  const LoginScreen({super.key});
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  String defaultValue = "EN";
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DropdownButton<String>(
                    items: <String>[
                      'EN',
                      'AM',
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: Styles.labelBoldBlackText
                              .copyWith(color: Colors.orange),
                        ),
                      );
                    }).toList(),
                    hint: Text(
                      defaultValue,
                      style: Styles.labelBoldBlackText
                          .copyWith(color: Colors.orange),
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        defaultValue = newValue!;
                      });
                    },
                  )
                ],
              ),
              Container(
                width: double.infinity,
                height: GetSize.getScreenHeightDevice(130),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/telbirr.jpg'),
                      fit: BoxFit.fitWidth),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: GetSize.getScreenHeightDevice(350),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'WelCome \nBack!',
                      style: Styles.largeBoldText,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: GetSize.getScreenWidthDevice(15),
                        vertical: GetSize.getScreenHeightDevice(15),
                      ),
                      width: double.infinity,
                      height: GetSize.getScreenHeightDevice(245),
                      decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.5,
                            blurStyle: BlurStyle.normal,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const InputCell(
                            inputLabel: "Mobile Number",
                            inputPlaceholder: "+21900****00",
                            surffixIcon: Icons.phone,
                          ),
                          Gap(
                            GetSize.getScreenHeightDevice(8),
                          ),
                          const InputCell(
                            inputLabel: "PIN Code",
                            inputPlaceholder: "Enter Pin",
                            surffixIcon: Icons.pin,
                          ),
                          Gap(
                            GetSize.getScreenHeightDevice(10),
                          ),
                          Container(
                            alignment: AlignmentDirectional.centerEnd,
                            child: const Text(
                              'PIN code must be at least 6 digits.',
                              style: TextStyle(
                                color: Color(0xfff02c0a),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                          Gap(
                            GetSize.getScreenHeightDevice(10),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ConformationScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              'Forgot PNI?',
                              style: Styles.kLinkText,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gap(GetSize.getScreenHeightDevice(25)),
              ReuseMaterialButton(
                onPressInput: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(),
                    ),
                  );
                },
                textLabel: 'Sign In',
                linearGradient: Styles.buttonGrdient,
              ),
              Gap(
                GetSize.getScreenHeightDevice(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account? ',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Color(0xff4a8af7),
                      fontSize: 14,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegistrationScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Register',
                      style: Styles.kLinkText,
                    ),
                  )
                ],
              ),
              Gap(
                GetSize.getScreenHeightDevice(20),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Copyright 1984-2021 \u00a9 Ethiotelcom ',
                    style: Styles.copyRight,
                  ),
                  Text('All right reserved', style: Styles.copyRight)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
