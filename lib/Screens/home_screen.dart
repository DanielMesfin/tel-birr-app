import 'package:flutter/material.dart';
import 'package:my_tel_birr/ReusableComponents/profile_avater.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_transaction_option_card.dart';
import 'package:my_tel_birr/ReusableComponents/flating_container.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_transaction_card.dart';
import 'package:my_tel_birr/ReusableComponents/quick_access_card.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Screens/conformation_screen.dart';
import 'package:my_tel_birr/Screens/scann_qr_code_screen.dart';
import 'send_trancation_screen.dart';
import 'recharge_account.dart';
import 'fundraising_screen.dart';
import 'financial_service_screen.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_blog.dart';
import 'package:my_tel_birr/ReusableComponents/reusabel_fiancial_card.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_reward_card.dart';
import 'agent_information.dart';

class MyHomePage extends StatefulWidget {
  static const String id = "myHomePage";

  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(gradient: Styles.appGrdient),
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(8.0),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: GetSize.getScreenWidthDevice(200),
                        height: GetSize.getScreenHeightDevice(80),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/telbirr.jpg'),
                                fit: BoxFit.fitWidth)),
                      ),
                      const ProfileAvatar()
                    ],
                  ),
                  Gap(
                    GetSize.getScreenHeightDevice(10),
                  ),
                  SingleChildScrollView(
                    child: Row(
                      children: [
                        ReusableRewardCard(
                          cardColor: Colors.indigoAccent,
                          cardCallBack: () {},
                        ),
                        Gap(
                          GetSize.getScreenWidthDevice(10),
                        ),
                        ReusableFinancialCard(
                          cardColor: Colors.orangeAccent,
                          cardCallBack: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FinancialService()));
                          },
                        )
                      ],
                    ),
                  ),
                  Gap(
                    GetSize.getScreenHeightDevice(20),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: GetSize.getScreenHeightDevice(5),
                        horizontal: GetSize.getScreenWidthDevice(7)),
                    width: GetSize.getScreenWidthDevice(400),
                    height: GetSize.getScreenHeightDevice(75),
                    child: ListView(
                      padding: EdgeInsets.symmetric(
                        vertical: GetSize.getScreenHeightDevice(5),
                        horizontal: GetSize.getScreenWidthDevice(5),
                      ),
                      scrollDirection: Axis.horizontal,
                      children: [
                        TransactionOptionCard(
                          fAIcon: FontAwesomeIcons.moneyBillTransfer,
                          transactionName: 'Send',
                          cardCallBack: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SendTransaction(),
                              ),
                            );
                          },
                        ),
                        Gap(
                          GetSize.getScreenWidthDevice(15),
                        ),
                        TransactionOptionCard(
                          fAIcon: FontAwesomeIcons.moneyBill1Wave,
                          transactionName: 'Receive',
                          cardCallBack: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ScanQR()));
                          },
                        ),
                        Gap(
                          GetSize.getScreenWidthDevice(15),
                        ),
                        TransactionOptionCard(
                          fAIcon: FontAwesomeIcons.mobileScreen,
                          transactionName: 'Recharge',
                          cardCallBack: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Recharge(),
                              ),
                            );
                          },
                        ),
                        Gap(
                          GetSize.getScreenWidthDevice(15),
                        ),
                        TransactionOptionCard(
                          fAIcon: FontAwesomeIcons.moneyBills,
                          transactionName: 'Withdraw',
                          cardCallBack: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ConformationScreen()));
                          },
                        ),
                        Gap(
                          GetSize.getScreenWidthDevice(15),
                        ),
                        TransactionOptionCard(
                          fAIcon: FontAwesomeIcons.peopleLine,
                          transactionName: 'Agent',
                          cardCallBack: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AgentInformation(),
                              ),
                            );
                          },
                        ),
                        Gap(
                          GetSize.getScreenWidthDevice(15),
                        ),
                        TransactionOptionCard(
                          fAIcon: FontAwesomeIcons.fistRaised,
                          transactionName: 'Fundraising',
                          cardCallBack: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Fundraising(),
                              ),
                            );
                          },
                        ),
                        Gap(
                          GetSize.getScreenWidthDevice(15),
                        ),
                        TransactionOptionCard(
                          fAIcon: FontAwesomeIcons.moneyBillTransfer,
                          transactionName: 'Send',
                          cardCallBack: () {},
                        ),
                      ],
                    ),
                  ),
                  Gap(
                    GetSize.getScreenHeightDevice(10),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: GetSize.getScreenHeightDevice(5),
                        horizontal: GetSize.getScreenWidthDevice(7)),
                    width: GetSize.getScreenWidthDevice(400),
                    height: GetSize.getScreenHeightDevice(150),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        BlogCard(
                          slogan: 'Send & Receive',
                          imageName: '1_blog.PNG',
                          cardCallBack: () {},
                        ),
                        Gap(
                          GetSize.getScreenWidthDevice(15),
                        ),
                        BlogCard(
                          slogan: 'Buy & Sell',
                          imageName: '2_blog.PNG',
                          cardCallBack: () {},
                        ),
                        Gap(
                          GetSize.getScreenWidthDevice(15),
                        ),
                        BlogCard(
                          slogan: 'Recharge',
                          imageName: '3_blog.PNG',
                          cardCallBack: () {},
                        ),
                        Gap(
                          GetSize.getScreenWidthDevice(15),
                        ),
                        BlogCard(
                          slogan: 'Buy Petroleum',
                          imageName: '4_blog.PNG',
                          cardCallBack: () {},
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Quick access',
                    style: Styles.noticeLabel,
                    textAlign: TextAlign.start,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: GetSize.getScreenHeightDevice(4),
                        horizontal: GetSize.getScreenWidthDevice(7)),
                    width: GetSize.getScreenWidthDevice(400),
                    height: GetSize.getScreenHeightDevice(74),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        QuickAccessCard(
                          quickAccessImage: 'q_add.PNG',
                          quickAccessName: '',
                          cardCallBack: () {},
                        ),
                        Gap(
                          GetSize.getScreenWidthDevice(15),
                        ),
                        QuickAccessCard(
                          quickAccessImage: 'q_ride.PNG',
                          quickAccessName: 'Ride',
                          cardCallBack: () {},
                        ),
                        Gap(
                          GetSize.getScreenWidthDevice(15),
                        ),
                        QuickAccessCard(
                          quickAccessImage: 'q_tel.PNG',
                          quickAccessName: 'Pay Bill',
                          cardCallBack: () {},
                        ),
                        Gap(
                          GetSize.getScreenWidthDevice(15),
                        ),
                        QuickAccessCard(
                          quickAccessImage: 'q_tiket.PNG',
                          quickAccessName: 'Ticket',
                          cardCallBack: () {},
                        ),
                      ],
                    ),
                  ),
                  Gap(
                    GetSize.getScreenHeightDevice(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Transactions',
                        style: Styles.noticeLabel,
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Gap(
                    GetSize.getScreenHeightDevice(10),
                  ),
                ],
              ),
              const TransactionCard(),
              Gap(
                GetSize.getScreenWidthDevice(15),
              ),
              const TransactionCard(),
              Gap(
                GetSize.getScreenWidthDevice(15),
              ),
              const TransactionCard(),
              Gap(
                GetSize.getScreenWidthDevice(15),
              ),
              const TransactionCard(),
            ],
          ),
        ),
      ),
      floatingActionButton: const FloatingContainer(),
    );
  }
}
