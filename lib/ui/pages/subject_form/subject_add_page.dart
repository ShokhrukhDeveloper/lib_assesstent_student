import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lib_assesstent_student/ui/widgets/app_bar/sign_button.dart';
import 'package:lib_assesstent_student/ui/widgets/custom_text_field.dart';

class SubjectAddPage extends StatefulWidget {
  const SubjectAddPage({super.key});

  @override
  State<SubjectAddPage> createState() => _SubjectAddPageState();
}

class _SubjectAddPageState extends State<SubjectAddPage> {
  final imagepicker = ImagePicker();
  Uint8List? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fan qo'shish"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 50),
              width: 400,
              child: Column(
                children: [
                  const CustomTextField(
                    labelText: 'Fan nomi qisqa',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextField(
                    labelText: "Fan nomi to'liq",
                    maxLine: 4,
                    borderRadius: 14,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (file != null)
                    const SizedBox(
                      height: 10,
                    ),
                  if (file != null)
                    Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: MemoryImage(file!), fit: BoxFit.cover)),
                    ),
                  const SizedBox(
                    height: 10,
                  ),
                  SignButton(
                    width: 200,
                    text: "Faylni tanlang",
                    onTap: () async {
                      XFile? image = await imagepicker.pickImage(
                          source: ImageSource.gallery);
                      if(image != null) {
                        file = await image.readAsBytes();
                        setState((){});
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SignButton(
                    width: 400,
                    text: "Saqlash",
                    onTap: () async {

                      },
                  )
                ],
              )),
        ),
      ),
    );
  }
}
