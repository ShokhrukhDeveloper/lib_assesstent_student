import 'dart:math';

import 'package:flutter/material.dart';
class SubjectMenuWidget extends StatelessWidget {
  const SubjectMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.black38,
      width: 400,
      height: double.infinity,
      child: Container(
        margin: EdgeInsets.all(10),
        height: 100,

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white
        ),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (c,i)=>item(),
        ),
      ),
      // child: ,
    );
  }
  Widget item(){
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12)
      ),
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      child: InkWell(
        onTap: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(value: Random().nextBool(), onChanged: (c){}),
            const SizedBox(width: 5,),
            ClipRRect(borderRadius:BorderRadius.circular(12),child: Image.network("https://picsum.photos/200", width: 24,height: 24,)),
            const SizedBox(width: 5,),
            const Flexible(child: Text("Жахон адабиёти ba  salantiv jkagvkjsdjfkgas asdjkfhasjkdf"))
          ],
        ),
      ),
    );
  }
}
