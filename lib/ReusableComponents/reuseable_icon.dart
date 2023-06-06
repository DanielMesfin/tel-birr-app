import 'package:flutter/material.dart';
import 'package:my_tel_birr/Constants/getSize.dart';

class ReusableIcon extends StatelessWidget {
  final IconData iconData;
  final bool? other;
  final Function()? iconCallBack;
  const ReusableIcon(
      {super.key, required this.iconData, this.other, this.iconCallBack});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: iconCallBack,
        child: Container(
          decoration: BoxDecoration(
            color: other == null ? const Color(0xffdbcfcf) : Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          width: GetSize.getScreenWidthDevice(30),
          height: GetSize.getScreenHeightDevice(30),
          child: Center(
            child: Icon(
              iconData,
              size: 25,
              color: other == null ? const Color(0xff033184) : Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
