import 'package:darya_navardi/screens/marine_course/widget/body.dart';
import 'package:flutter/material.dart';

class SeaCourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF09434E),
        title: Text(
          'دوره های دریایی',
        ),
      ),
      body: Body(),
    );
  }
}
