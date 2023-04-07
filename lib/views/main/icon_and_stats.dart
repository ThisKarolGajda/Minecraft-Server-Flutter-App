import 'package:flutter/material.dart';

import '../../constants.dart';

class ServerIconAndStats extends StatelessWidget {
  const ServerIconAndStats({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: size.width * 0.275,
          width: size.width / 4,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/logo.jpeg"),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(8, 6),
                  blurRadius: 25,
                  color: primaryShadowColor,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        const Text.rich(
          TextSpan(
            style: TextStyle(),
            children: [
              TextSpan(
                text: 'Join other ',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  height: 0.1,
                ),
              ),
              TextSpan(
                text: '500+ ',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: 'Poppins',
                  height: 0.1,
                ),
              ),
              TextSpan(
                text: 'online\nplayers at: ',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Poppins',
                ),
              ),
              TextSpan(
                text: 'hypixel.net',
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: 'Poppins'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
