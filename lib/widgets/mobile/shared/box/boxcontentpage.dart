import 'package:flutter/material.dart';
import 'package:gestock/utils/colors.dart';
import '../text_large.dart';

class BoxContentPage extends StatelessWidget {
  const BoxContentPage({
    super.key,
    required this.boxContent,
    this.sizeBoxContentImage = 150,
    this.urlImage = 'assets/img/bg.jpeg',
    required this.titleBoxContent,
    required this.titlePage,
  });
  final Widget boxContent;
  final double sizeBoxContentImage;
  final String urlImage;
  final String titleBoxContent;
  final String titlePage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(children: [
        Positioned(
          child: Container(
            alignment: Alignment.center,
            height: sizeBoxContentImage,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(urlImage),
                    opacity: 1,
                    fit: BoxFit.cover)),
            child: Container(
                alignment: Alignment.center,
                height: double.maxFinite,
                width: double.maxFinite,
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.6)),
                child:
                    TextLarge(text: titlePage, size: 30, color: bgcolorwhite)),
          ),
        ),
        Positioned(
          top: sizeBoxContentImage - 10,
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 290,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: bgcolorwhite,
            ),
            child: Column(children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 50,
                padding: const EdgeInsets.only(left: 5),
                width: double.infinity,
                child: TextLarge(
                  text: titleBoxContent,
                  size: 25,
                  color: colorBlue,
                ),
              ),
              Expanded(child: boxContent)
            ]),
          ),
        )
      ]),
    );
  }
}
