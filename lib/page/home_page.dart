
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../router/app_router.dart';



class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
        child: Column(
          children: [
            Text('MyHome page'),
            SizedBox(height: 40.0,),
            TextButton(onPressed: ()=>context.go(AppRoutes.settings), child: Text('Go MenuPage'))
          ],
        ),
      )),
    );
  }
}
