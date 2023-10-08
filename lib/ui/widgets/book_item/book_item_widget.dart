import 'package:flutter/material.dart';
class BookItemWidget extends StatelessWidget {
  const BookItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: const Color(0xffEDEDED))
      ),
      child: Row(
        children: [
          Container(height: 200 ,width: 150,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(14),
                image: const DecorationImage(image: NetworkImage("https://picsum.photos/200/300",),fit: BoxFit.cover)
            ),
          ),
          const Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0,right: 10),
                child: Text("Бепарволикнинг но and rich dad\n poor dad",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),
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
                ),
              ),

            ],
          ))
        ],
      ),
    );
  }
}
