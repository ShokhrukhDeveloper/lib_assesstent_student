import 'dart:math';

import 'package:flutter/material.dart';
class SubjectMenuWidget extends StatefulWidget {
  const SubjectMenuWidget({super.key});
static List<bool> ls=List.filled(10, false);

  @override
  State<SubjectMenuWidget> createState() => _SubjectMenuWidgetState();
}

class _SubjectMenuWidgetState extends State<SubjectMenuWidget> {
  int SelectedId=0;
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.black38,
      width: 400,
      height: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white
        ),
        child: ListView.builder(
          itemCount: SubjectMenuWidget.ls.length,
          itemBuilder: (c,i)=>item(i,onTap: () {
            SelectedId=i;

            setState(() {

          }); }, text: ''),
        ),
      ),
      // child: ,
    );
  }

  Widget item(int Id,{required VoidCallback onTap, required String text, }){
    return Container(

      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
              color: SelectedId==Id?Colors.black38:Colors.white
      ),
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Checkbox(value: Random().nextBool(), onChanged: (c){}),
            const SizedBox(width: 5,),
            ClipRRect(borderRadius:BorderRadius.circular(12),child: Image.network("https://picsum.photos/200", width: 24,height: 24,)),
            const SizedBox(width: 5,),
            const Flexible(child: Text("Жахон адабиёти Random")),
          ],
        ),
      ),
    );
  }
}
