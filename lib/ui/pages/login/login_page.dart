import 'package:flutter/material.dart';
import 'package:lib_assesstent_student/ui/pages/home/home_page.dart';

import '../../widgets/app_bar/sign_button.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ Text("Saytga kirish",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700
            ),),],
          ),
          const SizedBox(height: 20,),
          SizedBox(
            width: 400,
            child: TextField(
              decoration: InputDecoration(
                labelText: "LoginId",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
                )
              ),
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            width: 400,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Parol",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
                )
              ),
            ),
          ),
          const SizedBox(height: 20,),
          SignButton(text: "Kirish",width: 400,onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (c)=>const HomePage()));
          },)

        ],
      ),
    );
  }
}
