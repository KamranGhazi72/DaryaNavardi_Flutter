import 'package:darya_navardi/screens/marine_books/widget/body.dart';
import 'package:flutter/material.dart';

class MarineBooksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF09434E),
        title: Text(
          'کتاب های مهم دریانوردی',
        ),
      ),
      body: Body(),
    );
  }
}
