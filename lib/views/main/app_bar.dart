import 'package:flutter/material.dart';

import '../../constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.13,
      margin: const EdgeInsets.only(
        bottom: defaultPadding,
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: defaultPadding,
                right: defaultPadding,
                top: defaultPadding),
            decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(38),
                    bottomRight: Radius.circular(38))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Text(
                    'Hey Karol!',
                    textScaleFactor: 2.5,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'FredokaOne',
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'images/profile.jpeg',
                    color: Colors.white,
                  ),
                  iconSize: 75,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
