import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdabtiveIndicatore extends StatelessWidget {
  late String ios;
  AdabtiveIndicatore(this.ios);

  Widget build(BuildContext context) {
    if(ios=='android')
      return CircularProgressIndicator();
    return CupertinoActivityIndicator();
  }
}
