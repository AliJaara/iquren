import 'package:flutter/material.dart';
import 'package:iquran_project/adaptive_indicatorw.dart';
import 'package:iquran_project/constants.dart';

class MobileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.teal,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login and show Hot Offers',
                    style: Theme.of(context).textTheme.headlineMedium,),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(onPressed: (){},
                          child: Text('Login'),
                          height: 45,
                          color: Colors.teal,),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: MaterialButton(onPressed: (){},
                          child: Text('Register'),
                          height: 45,
                          color: Colors.teal,),
                      ),
                    ],
                  ),
                 SizedBox(height: 10,),
                 Center(child: AdabtiveIndicatore(
                   getOperationSystem()
                 ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
