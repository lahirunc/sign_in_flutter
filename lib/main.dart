import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_in/controllerBindings.dart';
import 'package:sign_in/screens/root.dart';

void main() async {
  // Firebase init
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // bind our app with the  Getx Controller
      initialBinding: ControllerBindings(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.amaranthTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Root(),
    );
  }
}
