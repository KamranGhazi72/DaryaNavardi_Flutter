import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xFFFBFBFB),
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "جستجو براساس نام دوره، دسته بندی",
            hintStyle: TextStyle(
                color: Color(0xFFC9D1D8), fontWeight: FontWeight.bold),
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
