import 'package:darya_navardi/screens/home/widget/grid_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.4), BlendMode.darken),
          image: AssetImage("assets/images/Home.png"),
        ),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            width: MediaQuery.of(context).size.width,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: IconButton(
              iconSize: 40,
              icon: Icon(
                Icons.menu_rounded,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Center(
              child: Image.asset(
                'assets/images/XMLID_240_.png',
                fit: BoxFit.cover,
                height: 110,
              ),
              //     child: IconButton(
              //   iconSize: 100,
              //   icon: SvgPicture.asset('assets/icons/User.svg',
              //       height: 100,
              //       width: 100,
              //       color: Colors.red,
              //       semanticsLabel: 'A red up arrow'),
              //   onPressed: () {},
              // )
            ),
          ),
          GridCard(),
        ],
      ),
    );
  }
}
