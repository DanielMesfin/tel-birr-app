import 'package:flutter/material.dart';
import 'package:my_tel_birr/Constants/getSize.dart';
import 'package:my_tel_birr/Screens/my_profile_screen.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: GetSize.getScreenWidthDevice(30),
      backgroundColor: Colors.grey,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyProfile(),
            ),
          );
        },
        child: CircleAvatar(
          radius: GetSize.getScreenWidthDevice(27),
          backgroundImage: const AssetImage('images/myboy.PNG'),
        ),
      ),
    );
  }
}
