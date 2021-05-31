import 'package:darya_navardi/screens/marine_books/marine_books_screen.dart';
import 'package:darya_navardi/screens/marine_course/marine_course_screen.dart';
import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 485,
        child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 14.0,
            mainAxisSpacing: 15.0,
            children: List.generate(choices.length, (index) {
              return Center(
                child: SelectCard(choice: choices[index]),
              );
            })),
      ),
    );
  }
}

class Choice {
  String title;
  IconData icon;
  dynamic Function() page;

  Choice({required this.title, required this.icon, required this.page});
}

List<Choice> choices = <Choice>[
  Choice(
      title: 'محاسبه زمان نشستن',
      icon: Icons.calculate_outlined,
      page: () => SeaCourseScreen()),
  Choice(
      title: 'محاسبه زمان NRI',
      icon: Icons.pending_actions_outlined,
      page: () => SeaCourseScreen()),
  Choice(
      title: 'مرکز واکسیناسیون',
      icon: Icons.add_box_outlined,
      page: () => SeaCourseScreen()),
  Choice(
      title: 'مدیریت اسناد',
      icon: Icons.folder_open_outlined,
      page: () => SeaCourseScreen()),
  Choice(
      title: 'دانشکده دریایی',
      icon: Icons.school_outlined,
      page: () => SeaCourseScreen()),
  Choice(
      title: 'انجمن',
      icon: Icons.forum_outlined,
      page: () => SeaCourseScreen()),
  Choice(
      title: 'کتاب های دریانوردی',
      icon: Icons.auto_stories_outlined,
      page: () => MarineBooksScreen()),
  Choice(
      title: 'دوره های دریایی',
      icon: Icons.cast_for_education_outlined,
      page: () => SeaCourseScreen()),
  Choice(
      title: 'لینک های وبسایت',
      icon: Icons.link_outlined,
      page: () => SeaCourseScreen()),
  Choice(
      title: 'بخشنامه ها',
      icon: Icons.receipt_long_outlined,
      page: () => SeaCourseScreen()),
  Choice(
      title: 'ویدئوهای یوتیوب',
      icon: Icons.play_circle_outline_outlined,
      page: () => SeaCourseScreen()),
  Choice(
      title: 'پزشکان',
      icon: Icons.enhanced_encryption_outlined,
      page: () => SeaCourseScreen()),
];

class SelectCard extends StatelessWidget {
  SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => choice.page()));
      },
      child: Container(
          // color: Colors.orange,
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(9)),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child:
                          Icon(choice.icon, size: 50.0, color: Colors.white)),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(choice.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white)),
                  ),
                ]),
          )),
    );
  }
}
