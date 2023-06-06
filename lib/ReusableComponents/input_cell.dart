import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';

class InputCell extends StatelessWidget {
  final TextInputType ? keyboarTypeInput;
  final String inputLabel;
  final String inputPlaceholder;
  final Function()? onFocuse;
  final IconData ? surffixIcon;
  final TextEditingController? conterollerFunction;
  const InputCell({
    super.key,
    this.keyboarTypeInput,
    this.conterollerFunction,
    this.onFocuse,
    this.surffixIcon,
    required this.inputLabel,
    required this.inputPlaceholder,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            inputLabel,
            style: Styles.labelBoldBlackText,
          ),
          Gap(
            GetSize.getScreenHeightDevice(8),
          ),
          TextField(
            controller: conterollerFunction,
            onTap: onFocuse,
            keyboardType: keyboarTypeInput,
            decoration: Styles.kInputDecoration.copyWith(
                hintText: inputPlaceholder,
              suffixIcon: Icon(surffixIcon)
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
