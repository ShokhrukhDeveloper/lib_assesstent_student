import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lib_assesstent_student/ui/widgets/app_bar/sign_button.dart';
import 'package:lib_assesstent_student/ui/widgets/custom_text_field.dart';

class BookAddPage extends StatefulWidget {
  const BookAddPage({super.key});

  @override
  State<BookAddPage> createState() => _BookAddPageState();
}

class _BookAddPageState extends State<BookAddPage> {
  final imagepicker = ImagePicker();
  Uint8List? file;
  Uint8List? fileBook;
  static const List<String> _kOptions = <String>[
    'aardvark',
    'bobcat',
    'chameleon',
  ];
  String? fileName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kitob qo'shish"),
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
                    labelText: 'Kitob nomi ',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextField(
                    labelText: "Kitob haqida",
                    maxLine: 4,
                    borderRadius: 14,
                  ),
                  const CustomTextField(
                    labelText: 'Yili ',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextField(
                    labelText: 'Mamlakati ',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextField(
                    labelText: 'Tili ',
                  ),
                  const SizedBox(
                    height: 10,
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
                  Autocomplete<String>(
                    optionsBuilder: (TextEditingValue textEditingValue) {
                      if (textEditingValue.text == '') {
                        return const Iterable<String>.empty();
                      }
                      return _kOptions.where((String option) {
                        return option.contains(textEditingValue.text.toLowerCase());
                      });
                    },
                    onSelected: (String selection) {
                      debugPrint('You just selected $selection');
                    },
                  ),
                  SignButton(
                    width: 200,
                    text: "Kitob rasmini tanlang",
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
                  Text("${fileName}"),
                  const SizedBox(
                    height: 20,
                  ),
                  SignButton(
                    width: 200,
                    text: "Kitob Faylini tanlang",
                    onTap: () async {
                      FilePickerResult? result = await FilePicker.platform.pickFiles();

                      if (result != null) {
                        file = result.files.single.bytes;
                        fileName=result.files.single.name;
                      } else {
                        // User canceled the picker
                      }
                      setState(() {

                      });
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
                  ), const SizedBox(
                    height: 40,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
