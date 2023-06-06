import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_round_button.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:my_tel_birr/ReusableComponents/reuseable_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_transaction_option_card.dart';

class SendTransaction extends StatelessWidget {
  const SendTransaction({Key? key}) : super(key: key);

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
        Gap(
          GetSize.getScreenHeightDevice(5),
        ),
        const Image(
          image: AssetImage('images/transfer.PNG'),
        ),
        const Text(
          'Send to',
          style: Styles.noticeLabel,
          textAlign: TextAlign.start,
        ),
        Gap(
          GetSize.getScreenHeightDevice(10),
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
                fAIcon: FontAwesomeIcons.user,
                transactionName: 'Friend',
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
                fAIcon: FontAwesomeIcons.buildingColumns,
                transactionName: 'Bank',
                cardCallBack: () {},
              ),
              Gap(
                GetSize.getScreenWidthDevice(15),
              ),
              TransactionOptionCard(
                fAIcon: FontAwesomeIcons.shop,
                transactionName: 'Merchant',
                cardCallBack: () {},
              ),
              Gap(
                GetSize.getScreenWidthDevice(15),
              ),
              TransactionOptionCard(
                fAIcon: FontAwesomeIcons.handshake,
                transactionName: 'Payment',
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
                'Send to',
                style: Styles.labelBoldBlackText,
              ),
              Gap(
                GetSize.getScreenHeightDevice(5),
              ),
              TextField(
                decoration: Styles.kInputDecoration
                    .copyWith(hintText: 'Receiver\'s Mobile Number'),
                textAlign: TextAlign.start,
              ),
              Gap(
                GetSize.getScreenHeightDevice(15),
              ),
              const Text('Remark', style: Styles.labelBoldBlackText),
              Gap(
                GetSize.getScreenHeightDevice(5),
              ),
              TextField(
                decoration:
                    Styles.kInputDecoration.copyWith(hintText: 'Remark'),
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
            linearGradient: Styles.buttonGrdient, textLabel: 'Send')
      ],
    )));
  }
}
