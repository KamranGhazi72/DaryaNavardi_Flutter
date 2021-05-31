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

  Choice({required this.title, required this.icon});
}

List<Choice> choices = <Choice>[
  Choice(title: 'محاسبه زمان نشستن', icon: Icons.calculate_outlined),
  Choice(title: 'محاسبه زمان NRI', icon: Icons.pending_actions_outlined),
  Choice(title: 'مرکز واکسیناسیون', icon: Icons.add_box_outlined),
  Choice(title: 'مدیریت اسناد', icon: Icons.folder_open_outlined),
  Choice(title: 'دانشکده دریایی', icon: Icons.school_outlined),
  Choice(title: 'انجمن', icon: Icons.forum_outlined),
  Choice(title: 'کتاب های دریانوردی', icon: Icons.auto_stories_outlined),
  Choice(title: 'دوره های دریایی', icon: Icons.cast_for_education_outlined),
  Choice(title: 'لینک های وبسایت', icon: Icons.link_outlined),
  Choice(title: 'بخشنامه ها', icon: Icons.receipt_long_outlined),
  Choice(title: 'ویدئوهای یوتیوب', icon: Icons.play_circle_outline_outlined),
  Choice(title: 'پزشکان', icon: Icons.enhanced_encryption_outlined),
];

class SelectCard extends StatelessWidget {
  SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
