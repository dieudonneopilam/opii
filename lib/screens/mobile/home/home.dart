import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:gestock/widgets/mobile/shared/text_large.dart';
import '../../../widgets/mobile/shared/box/box.all.service.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text('Tesla Companie'),
        actions: const [
          Icon(BootstrapIcons.bell),
          SizedBox(width: 20),
          CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage('assets/img/bg.jpeg'),
          ),
          SizedBox(width: 20)
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(children: [
          Positioned(
            child: Container(
              alignment: Alignment.center,
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/img/bg.jpeg'),
                      opacity: 1,
                      fit: BoxFit.cover)),
              child: Container(
                  alignment: Alignment.center,
                  height: double.maxFinite,
                  width: double.maxFinite,
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.6)),
                  child: const TextLarge(
                      text: 'Bienvenu', size: 30, color: Colors.white)),
            ),
          ),
          Positioned(
            top: 140,
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 290,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.white,
              ),
              child: Column(children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  padding: const EdgeInsets.only(left: 5),
                  width: double.infinity,
                  child: const TextLarge(
                    text: 'Vos Services',
                    size: 25,
                    color: Color(0XFF3F3CCF),
                  ),
                ),
                const Expanded(child: BoxAllService())
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
