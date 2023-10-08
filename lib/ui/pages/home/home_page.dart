import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bar/sign_button.dart';
import '../../widgets/book_item/book_item_widget.dart';
import '../../widgets/subject_menu/subject_menu.dart';
import '../bookinfo/book_info_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const FlutterLogo(),
          onPressed: () {},
        ),
        title: Text(
          "Lib Assesstent ",
          style: TextStyle(color: Colors.white),
        ),
        actions: [SignButton(text: "Kirish",)],
        bottom:  PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: const Text("Kitoblar"))
              ],
            )),
      ),
      body: IndexedStack(
        children: [Row(
          children: [
            SubjectMenuWidget(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 500,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25))),
                    ),
                  ),
                  Expanded(child: Container(
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 20,
                        right: 20,

                      ),
                      child: ListView.builder(
                          itemCount: 25,
                          itemBuilder: (c, i) => InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (c)=>BookInfoPage()));
                              },
                              child: const BookItemWidget()))))
                ],
              ),
            )
          ],
        ),],
      )
    );
  }

}
