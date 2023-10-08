import 'package:flutter/material.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:lib_assesstent_student/ui/pages/book_add/book_add.dart';
import 'package:lib_assesstent_student/ui/pages/login/login_page.dart';
import 'package:lib_assesstent_student/ui/pages/subject_form/subject_add_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FlutterWebFrame(
    builder:(c)=> MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  const BookAddPage()//SubjectAddPage()//LoginPage(),
      ),
        maximumSize: const Size(1440.0,800),
    );
  }
}

