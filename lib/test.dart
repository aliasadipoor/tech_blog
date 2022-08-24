import 'package:flutter/material.dart';
import 'package:tech_blog/gen/assets.gen.dart';

class man extends StatelessWidget {
  const man({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Assets.img.posterTest.image(),),);
  }
}