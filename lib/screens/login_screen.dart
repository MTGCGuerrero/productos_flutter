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
            _LoginForm(),
          ],)),
          SizedBox(height: 50,),
          Text('Crear nueva cuenta')
        ],
      ),)),
   );
  }
}


class _LoginForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(child: Column(children: [

        TextFormField(
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.deepPurple,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.deepPurple,
                width: 2,
              ),
            ),
            hintText: 'Email',
            labelText: 'correo electronico',
            labelStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.alternate_email_outlined,color: Colors.indigo,)
          ),
        )


      ],)),
    );
  }
}