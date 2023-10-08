import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bar/sign_button.dart';
import '../../widgets/book_item/book_item_widget.dart';
import '../../widgets/subject_menu/subject_menu.dart';

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
        actions: [SignButton()],
      ),
      body: Row(
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
                            onTap: (){},
                            child: const BookItemWidget()))))
              ],
            ),
          )
        ],
      ),
    );
  }

}
