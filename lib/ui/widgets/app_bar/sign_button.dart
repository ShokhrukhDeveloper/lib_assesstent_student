import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  const SignButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff3F51B5),
        borderRadius: BorderRadius.circular(14)
      ),
      height: 50,
      width: 150,
      
      child: Center(child: Text("Kirish",style: TextStyle(color: Colors.white),),),
    );
  }
}
