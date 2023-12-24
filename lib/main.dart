import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_repair/Admin%20add%20notification.dart';
import 'package:vehicle_repair/Admin%20home.dart';
import 'package:vehicle_repair/Admin%20login.dart';
import 'package:vehicle_repair/Admin%20mechanic%202.dart';
import 'package:vehicle_repair/Admin%20mechanic.dart';
import 'package:vehicle_repair/Admin%20notification.dart';
import 'package:vehicle_repair/Admin%20payment.dart';
import 'package:vehicle_repair/Admin%20user%202.dart';
import 'package:vehicle_repair/Admin%20user.dart';
import 'package:vehicle_repair/Mech%20accepted.dart';
import 'package:vehicle_repair/Mech%20botton%20navigation%20bar.dart';
import 'package:vehicle_repair/Mech%20edit%20profile.dart';
import 'package:vehicle_repair/Mech%20home%20tabbar.dart';
import 'package:vehicle_repair/Mech%20login.dart';
import 'package:vehicle_repair/Mech%20notification.dart';
import 'package:vehicle_repair/Mech%20profile.dart';
import 'package:vehicle_repair/Mech%20rating.dart';
import 'package:vehicle_repair/Mech%20request.dart';
import 'package:vehicle_repair/Mech%20service.dart';
import 'package:vehicle_repair/Mech%20sign%20up.dart';
import 'package:vehicle_repair/Mechanic%20failed%20page.dart';
import 'package:vehicle_repair/Splash%20screen.dart';
import 'package:vehicle_repair/User%20login.dart';
import 'package:vehicle_repair/User%20mechanic%20l.dart';
import 'package:vehicle_repair/User%20mechanic%20list.dart';
import 'package:vehicle_repair/User%20notification.dart';
import 'package:vehicle_repair/User%20profile.dart';
import 'package:vehicle_repair/User%20rating%20page.dart';
import 'package:vehicle_repair/User%20request%20list.dart';
import 'package:vehicle_repair/User%20sign%20up.dart';
import 'package:vehicle_repair/firebase%20test.dart';
import 'package:vehicle_repair/mech%20%20service%20accep%20or%20reject%20t%20page%20.dart';
import 'package:vehicle_repair/mech%20status%20completed.dart';
import 'package:vehicle_repair/user%20mechanic%20bill%20page.dart';
import 'package:vehicle_repair/user%20mechanic%20delalis%20%20page.dart';
import 'package:vehicle_repair/user%20or%20mech%20page.dart';
import 'package:vehicle_repair/user%20payment%20page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Mechnavigationbarrr()
    );
  }
}



