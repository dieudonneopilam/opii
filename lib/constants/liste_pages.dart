import 'package:flutter/material.dart';
import 'package:gestock/screens/mobile/abonement/aboment.dart';
import 'package:gestock/screens/mobile/members/member.dart';
import 'package:gestock/screens/mobile/profil/profil.dart';
import 'package:gestock/screens/mobile/questions/question.dart';
import '../screens/mobile/home/home.dart';

List<Widget> pagesClient = [
  const HomeMobile(title: 'title'),
  const AbonmentPage(),
  const MembersPages(),
  const QuestionsPage(),
  const ProfilPage(),
];
