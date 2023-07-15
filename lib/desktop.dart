import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Row(
         children: [
           Expanded(
             child: Container(
               height: double.infinity,
               color: Colors.teal,
             ),
           ),
           Expanded(
             child: Padding(
               padding: const EdgeInsets.all(20.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Login and show Hot Offers',
                   style: Theme.of(context).textTheme.headline4,),
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
                   )
                 ],

               ),
             ),
           )
         ],
       ),
    );
  }
}
