import 'package:flutter/material.dart';


class CustomCategories extends StatelessWidget {
  const CustomCategories({super.key, required this.widget, required this.text, required this.height, required this.width});
  final Widget widget;
  final String text;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.only(left: 10),
      child: Column(
        children: [
          ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(10),
            child: Container(
                height: height,
                width: width,
                child:widget
            ),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 11,fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
