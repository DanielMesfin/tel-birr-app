import 'package:flutter/material.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Screens/scann_qr_code_screen.dart';
class FloatingContainer extends StatelessWidget {
  const FloatingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ScanQR()));
      },
      child: Container(
        height: GetSize.getScreenHeightDevice(40),
        width: GetSize.getScreenWidthDevice(90),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
          color: Colors.blueAccent,
          image: DecorationImage(
            image: AssetImage('images/scann.PNG'),
          ),
        ),
      ),
    );
  }
}
