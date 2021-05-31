import 'package:darya_navardi/screens/marine_course/widget/filter.dart';
import 'package:darya_navardi/screens/marine_course/widget/marine_course_list.dart';
import 'package:darya_navardi/screens/marine_course/widget/searchInput.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SearchInput(),
          Filter(),
          MarineCourseList(),
        ],
      ),
    );
  }
}
