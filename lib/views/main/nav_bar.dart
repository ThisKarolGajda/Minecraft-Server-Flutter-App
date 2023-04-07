import 'package:flutter/material.dart';

import '../../constants.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.1,
      color: primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(
            Icons.home,
            size: 40,
            color: Colors.white,
            shadows: [
              Shadow(
                color: primaryShadowColor,
                blurRadius: 50,
                offset: Offset(3, 3),
              ),
            ],
          ),
          Icon(
            Icons.newspaper,
            size: 40,
            color: Colors.white,
            shadows: [
              Shadow(
                color: primaryShadowColor,
                blurRadius: 50,
                offset: Offset(3, 3),
              ),
            ],
          ),
          Icon(
            Icons.settings,
            size: 40,
            color: Colors.white,
            shadows: [
              Shadow(
                color: primaryShadowColor,
                blurRadius: 50,
                offset: Offset(3, 3),
              ),
            ],
          )
        ],
      ),
      //color: primaryColor,
    );
  }
}
