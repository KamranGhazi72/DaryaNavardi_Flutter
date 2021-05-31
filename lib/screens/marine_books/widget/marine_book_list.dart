import 'package:flutter/material.dart';

class MarineBookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        height: 520,
        child: ListView.builder(
          itemCount: 9,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: Color(0xFFEFF0F1),
                border: Border.all(color: Colors.black12, width: 1),
              ),
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/1.png',
                    height: 135,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'کتاب تامین مالی کشتی تجاری',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Row(
                        children: [
                          Text(
                            'نویسنده:',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'فرج اله رسائی',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'قیمت:',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '85000',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'تومن',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
