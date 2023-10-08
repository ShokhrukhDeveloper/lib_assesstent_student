import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  const SignButton({super.key, required this.text, this.width,  this.onTap});
final String text;
final double? width;
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff3F51B5),
          borderRadius: BorderRadius.circular(14)
        ),
        height: 50,
        width: width??150,

        child:  Center(child: Text(text,style: const TextStyle(color: Colors.white),),),
      ),
    );
  }
}
