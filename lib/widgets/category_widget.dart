import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    super.key,
    required this.color,
    required this.text,
    this.onTap,
  });
  Color color;
  String text;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 60,
        width: double.infinity, // all space which is available
        color: color,
        child: Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
