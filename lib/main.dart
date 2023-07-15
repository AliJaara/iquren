import 'package:flutter/material.dart';
import 'package:iquran_project/desktop.dart';
import 'package:iquran_project/mobile.dart';
import 'package:iquran_project/module/login/login_screen.dart';

import 'module/native_code.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
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
      ),

      home: Builder(builder: (context) {
       if( MediaQuery.of(context).size.width.toInt()<=580)
          return MediaQuery(
              data:MediaQuery.of(context).copyWith(
                textScaleFactor:0.6,
                boldText: true
              ),
              child:  MobileScreen());
        return DesktopScreen();
      },)

    );
  }
}