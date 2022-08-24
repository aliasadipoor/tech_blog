import 'package:flutter/material.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/my_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // header
       
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.menu),
                  Assets.img.logo.image(height: size.height / 13.6),
                  const Icon(Icons.search)
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Stack(
              children: [
              // homePosterCover
              Container(
                width: size.width / 1.25,
                height: size.height / 4.3,
                foregroundDecoration:  BoxDecoration(
                    color: Colors.black45,
                    borderRadius:  BorderRadius.all(Radius.circular(15)),
                 image: DecorationImage(image: Assets.img.posterTest).image

                    gradient: const LinearGradient(
                        colors: GradiantColors.homePosterCoverGradiant,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:  const [
                        Text("ملیکا عزیزی یک روز پیش"),
                        Text("Like 253")
                      ],
                    )
                  ],
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
