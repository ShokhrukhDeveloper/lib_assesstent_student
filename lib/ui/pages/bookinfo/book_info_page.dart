import 'package:flutter/material.dart';

import '../../widgets/app_bar/sign_button.dart';

class BookInfoPage extends StatefulWidget {
  const BookInfoPage({super.key});

  @override
  State<BookInfoPage> createState() => _BookInfoPageState();
}

class _BookInfoPageState extends State<BookInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,

        title: const Text(
          "Lib Assessment ",
          style: TextStyle(color: Colors.white),
        ),
        actions:  const [SignButton(text: "Kirish",)],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 450,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(14),
                        image: const DecorationImage(
                            image: NetworkImage(
                              "https://picsum.photos/200/300",
                            ),
                            fit: BoxFit.cover)),
                  ),
                  const Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 10),
                        child: Text(
                          "Бепарволикнинг но and rich dad\n poor dad",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 10),
                        child: Text(
                          "SIYOSAT, FANTASTIKA",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"
                          " eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut"
                          " enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi "
                          "ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit "
                          "in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Yili: 2009",
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                          )),
                      Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Author: Hans Cristian Andersen",
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                          )),
                      Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("ISSNB: 1998999565",
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                          )),
                    ],
                  ))
                ],
              ),
              Container(
                height: 50,
                  width: 250,
                  padding: EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Color(0xff3F51B5)
                  ),
                  child: const Center(
                    child: Text("Sevimliga qo'shish",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ),
                  ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
