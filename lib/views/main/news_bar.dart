import 'package:flutter/material.dart';

import '../../constants.dart';

class ScrollableNews extends StatelessWidget {
  const ScrollableNews({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.56,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            News(
              size: size,
              title: 'News 21.03.2023!',
              photoName: 'images/cinematic_2.jpg',
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pellentesque felis eu tempus efficitur. In vitae est laoreet, maximus turpis quis, congue risus. Quisque elementum metus ut nulla hendrerit placerat. Mauris at ultricies massa, a semper massa. Etiam a lectus mauris.',
            ),
            News(
              size: size,
              title: 'News 01.03.2023!',
              photoName: 'images/cinematic_1.jpg',
              text:
                  'Maecenas commodo lacus nibh, ac rutrum sapien pharetra a. Maecenas rhoncus felis et eleifend rhoncus. Donec elit nulla, interdum et consequat at, imperdiet non dolor. Quisque iaculis dui volutpat, bibendum turpis tristique, rhoncus nunc. Donec quis tincidunt eros.',
            ),
          ],
        ),
      ),
    );
  }
}

class News extends StatelessWidget {
  const News({
    super.key,
    required this.size,
    required this.title,
    required this.text,
    required this.photoName,
  });

  final Size size;
  final String title;
  final String text;
  final String photoName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: defaultPadding - 10,
          top: defaultPadding,
          bottom: defaultPadding,
          right: defaultPadding - 10),
      child: SizedBox(
        width: size.width * 5 / 9,
        height: null,
        child: GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(defaultPadding / 2),
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(20, 20),
                  blurRadius: 28,
                  color: primaryShadowColor,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'FredokaOne',
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                Expanded(
                  flex: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          photoName,
                        ),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(8, 6),
                          blurRadius: 50,
                          color: primaryShadowColor,
                        ),
                      ],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
