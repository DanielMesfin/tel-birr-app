import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:my_tel_birr/Screens/home_screen.dart';
import 'package:my_tel_birr/Screens/login_screen.dart';
import 'package:my_tel_birr/Screens/registration_screen.dart';
//import 'package:firebase_core/firebase_core.dart';

void main() async {
// Ensure the plugin service for fireBase
  //await Firebase.initializeApp();

  // Ensure that plugin services are initialized so that `availableCameras()`
  WidgetsFlutterBinding.ensureInitialized();

// Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

// Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;
// run app method is us below
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tel Bir',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginScreen.id,
      routes: {
        MyHomePage.id: (context) => const MyHomePage(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen()
      },
    );
  }
}
