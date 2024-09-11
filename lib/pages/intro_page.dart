import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Center(
          child: Text(
            'LOJA DA NIKE 👟',
            style: TextStyle(
              fontFamily: 'Handjet',
              fontSize: 36,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            // logo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('lib/images/nike-4-logo-svg-vector.svg'),
            ),
            // title
          ],
        ),
      ),
    );
  }
}