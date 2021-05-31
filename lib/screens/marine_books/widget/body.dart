import 'package:darya_navardi/screens/marine_books/widget/filter.dart';
import 'package:darya_navardi/screens/marine_books/widget/marine_book_list.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Filter(),
          MarineBookList(),
        ],
      ),
    );
  }
}
