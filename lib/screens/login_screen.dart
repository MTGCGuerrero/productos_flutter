import 'package:flutter/material.dart';
import 'package:products_app/widgets/widgets.dart';


class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(child: SingleChildScrollView(child: Column(
        children: [
          SizedBox(height: 100,),

          CardContainer(child: Column(children: [
            SizedBox(height: 10,),
            Text('login',style: Theme.of(context).textTheme.bodyMedium,),
            SizedBox(height: 30,),
            Text('formulario')
          ],)),
        ],
      ),)),
   );
  }
}