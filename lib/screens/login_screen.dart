import 'package:flutter/material.dart';
import 'package:products_app/ui/input_decorations.dart';
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
          Text('Crear nueva cuenta'),
          SizedBox(
              height: 50,
            ),

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
          decoration: InputDecorations.authInputDecoration(hintText: 'noseuqepn@gmail.com', labelText: 'correo electronico',prefixIcon: Icons.alternate_email_outlined),
        ),
        SizedBox(height: 30,),
        TextFormField(
            autocorrect: false,
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hintText: '******',
                labelText: 'Contraseña',
                prefixIcon: Icons.lock_clock_outlined),
          ),
          SizedBox(height: 30,),

          MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Colors.grey,
            elevation: 0,
            color: Colors.deepPurple,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 80,vertical: 15),
              child: Text('Ingresar',style: TextStyle(color: Colors.white),),
            ),
            onPressed: null)


      ],)),
    );
  }
}