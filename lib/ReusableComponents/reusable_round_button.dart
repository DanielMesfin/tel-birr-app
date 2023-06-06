import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Constants/style.dart';

class ReuseMaterialButton extends StatelessWidget {
  final bool? enabled;
  final LinearGradient linearGradient;
  final Function()? onPressInput;
  final String textLabel;
  final Color? textColor;
  const ReuseMaterialButton({
    super.key,
    this.onPressInput,
    this.enabled,
    this.textColor,
    required this.linearGradient,
    required this.textLabel,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: linearGradient,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 1.5,
                blurStyle: BlurStyle.solid,
                color: enabled == true
                    ? const Color(0xfff39733)
                    : Colors.blueAccent,
                spreadRadius: 1)
          ]),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(
          horizontal: GetSize.getScreenWidthDevice(10),
          vertical: GetSize.getScreenHeightDevice(15),
        ),
        height: GetSize.getScreenHeightDevice(40),
        minWidth: double.infinity,
        splashColor: Colors.blue,
        highlightElevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: onPressInput,
        child: Text(textLabel,
            style: textColor == null
                ? enabled == null
                    ? Styles.buttonLabelStyle
                    : Styles.buttonLabelStyle.copyWith(
                        color: enabled == true ? Colors.white : Colors.black87,
                      )
                : TextStyle(color: textColor)),
      ),
    );
  }
}
