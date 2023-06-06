import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:my_tel_birr/ReusableComponents/reusableOptionButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Constants/style.dart';
import 'package:my_tel_birr/ReusableComponents/reusable_round_button.dart';
import 'package:my_tel_birr/ReusableComponents/reuseable_icon.dart';
import 'package:my_tel_birr/ReusableComponents/input_cell.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  const RegistrationScreen({super.key});
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final myController = TextEditingController();
  String? deviceName = '';
  File? idPhoto;
  File? phPhoto;
  String whichCard = '';
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  // function for device selection
  void device(con, dType) {
    showDialog(
      context: con,
      builder: (context) {
        return AlertDialog(
          shadowColor: Colors.grey,
          backgroundColor: Colors.white,
          elevation: 7.8,
          title: const Text(
            ' Select Gallery or Camera ',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black87, fontSize: 16),
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OptionButton(
                buttonColor: Colors.blueAccent,
                buttonLabel: 'Gallery',
                actionTakenOnCartItem: () {
                  setState(() {
                    dType = 'G';
                    pickImage(dType);
                    Navigator.pop(context);
                  });
                },
              ),
              OptionButton(
                buttonColor: Colors.blue,
                buttonLabel: 'Camera',
                actionTakenOnCartItem: () {
                  setState(() {
                    dType = 'C';
                    pickImage(dType);
                    Navigator.pop(context);
                  });
                },
              )
            ],
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(2.0),
            ),
          ),
        );
      },
    );
  }

// function for image pecker
  Future pickImage(String type) async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(
          source: type == 'C' ? ImageSource.camera : ImageSource.gallery);
      if (image != null) {
        final File imageTemp = File(image.path);
        setState(() {
          idPhoto = imageTemp;
        });
      }
    } catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: Styles.appGrdient),
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: GetSize.getScreenWidthDevice(5),
              vertical: GetSize.getScreenHeightDevice(10),
            ),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableIcon(
                    iconData: Icons.arrow_back_ios_rounded,
                    iconCallBack: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    'Account Information',
                    style: Styles.labelBoldBlackText,
                  )
                ],
              ),
              Gap(
                GetSize.getScreenHeightDevice(15),
              ),
              const Text(
                'NAME',
                style: Styles.labelBoldBlackText,
              ),
              Gap(
                GetSize.getScreenHeightDevice(8),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: GetSize.getScreenWidthDevice(10),
                  vertical: GetSize.getScreenHeightDevice(10),
                ),
                width: double.infinity,
                height: GetSize.getScreenHeightDevice(180),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const InputCell(
                          inputLabel: "First Name",
                          inputPlaceholder: "First Name",
                        ),
                        Gap(GetSize.getScreenWidthDevice(8)),
                        const InputCell(
                          inputLabel: "Middle Name",
                          inputPlaceholder: "Middle Name",
                        ),
                      ],
                    ),
                    Gap(
                      GetSize.getScreenHeightDevice(8),
                    ),
                    Row(
                      children: [
                        const InputCell(
                          inputLabel: "Last Name",
                          inputPlaceholder: "Last Name",
                        ),
                        Gap(GetSize.getScreenWidthDevice(8)),
                        Expanded(child: Container())
                      ],
                    ),
                  ],
                ),
              ),
              Gap(
                GetSize.getScreenHeightDevice(10),
              ),
              const Text(
                'IDENTIFICATION',
                style: Styles.labelBoldBlackText,
              ),
              Gap(
                GetSize.getScreenHeightDevice(8),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: GetSize.getScreenWidthDevice(10),
                  vertical: GetSize.getScreenHeightDevice(10),
                ),
                width: double.infinity,
                height: GetSize.getScreenHeightDevice(300),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const InputCell(
                          inputLabel: "Gender",
                          inputPlaceholder: "Gender",
                          surffixIcon: IconDataSolid(0xf078),
                        ),
                        Gap(GetSize.getScreenWidthDevice(8)),
                        const InputCell(
                          surffixIcon: Icons.calendar_month_rounded,
                          inputLabel: "Date Of Birth",
                          inputPlaceholder: "Date Of Birth",
                        ),
                      ],
                    ),
                    Gap(
                      GetSize.getScreenHeightDevice(8),
                    ),
                    Row(
                      children: [
                        const InputCell(
                          inputLabel: "ID Type",
                          inputPlaceholder: "ID Type",
                        ),
                        Gap(GetSize.getScreenWidthDevice(8)),
                        const InputCell(
                          inputLabel: "ID Number",
                          inputPlaceholder: "ID Number",
                        ),
                      ],
                    ),
                    Gap(
                      GetSize.getScreenHeightDevice(8),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImagePlaceHolder(
                          imageLabe: 'ID Photo',
                          inputImage: idPhoto,
                          selectImage: () {
                            device(context, deviceName);
                          },
                        ),
                        Gap(
                          GetSize.getScreenWidthDevice(8),
                        ),
                        ImagePlaceHolder(
                          inputImage: idPhoto,
                          imageLabe: 'Personal Photo',
                          selectImage: () {
                            device(context, deviceName);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(
                GetSize.getScreenHeightDevice(10),
              ),
              const Text(
                'ADDRESS',
                style: Styles.labelBoldBlackText,
              ),
              Gap(
                GetSize.getScreenHeightDevice(8),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: GetSize.getScreenWidthDevice(10),
                  vertical: GetSize.getScreenHeightDevice(10),
                ),
                width: double.infinity,
                height: GetSize.getScreenHeightDevice(180),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const InputCell(
                          inputLabel: "Region",
                          inputPlaceholder: "Region",
                          surffixIcon: IconDataSolid(0xf078),
                        ),
                        Gap(GetSize.getScreenWidthDevice(8)),
                        const InputCell(
                          inputLabel: "Zone/ Sub City",
                          inputPlaceholder: "Zone/ Sub City",
                          surffixIcon: IconDataSolid(0xf078),
                        ),
                      ],
                    ),
                    Gap(
                      GetSize.getScreenHeightDevice(8),
                    ),
                    Row(
                      children: [
                        const InputCell(
                          inputLabel: "Woreda",
                          inputPlaceholder: "Woreda",
                        ),
                        Gap(GetSize.getScreenWidthDevice(8)),
                        const InputCell(
                          inputLabel: "Kebelle",
                          inputPlaceholder: "Kebelle",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(
                GetSize.getScreenHeightDevice(15),
              ),
              const ReuseMaterialButton(
                  linearGradient: Styles.buttonGrdient, textLabel: 'Register'),
              Gap(
                GetSize.getScreenHeightDevice(15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImagePlaceHolder extends StatelessWidget {
  final Function()? selectImage;
  final String imageLabe;
  final File? inputImage;
  const ImagePlaceHolder({
    super.key,
    this.selectImage,
    this.inputImage,
    required this.imageLabe,
  });

  @override
  Widget build(BuildContext context) {
    final width = GetSize.getSizeWidth(context);
    final height = GetSize.getSizeWidth(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          imageLabe,
          style: Styles.labelBoldBlackText,
          textAlign: TextAlign.start,
        ),
        Gap(
          GetSize.getScreenHeightDevice(6),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          height: height * 0.275,
          width: width * 0.43,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: InkWell(
            onTap: selectImage,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child:
                  inputImage == null ? const Text('') : Image.file(inputImage!),
            ),
          ),
        )
      ],
    );
  }
}
