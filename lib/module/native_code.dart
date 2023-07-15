import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class  NativeCodeScreen extends StatefulWidget {
  State<NativeCodeScreen> createState() => _NativeCodeScreenState();
}

class _NativeCodeScreenState extends State<NativeCodeScreen> {
  static const platform = MethodChannel('samples.flutter.dev/battery');

  String batteryLevel = 'Unknown battery level.';

  void getBatteryLevel()  {
    platform.invokeMethod('getBatteryLevel').then((value) {
      setState(() {
        batteryLevel = 'Battery level at $value % .';
      });
      }).catchError((onError){
        setState(() {
          batteryLevel = "Failed to get battery level: '${onError.message}'.";
        });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: getBatteryLevel,
              child: const Text('Get Battery Level'),
            ),
            Text(batteryLevel),
          ],
        ),
      ),
    );
  }
}
