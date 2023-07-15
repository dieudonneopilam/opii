import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestock/utils/colors.dart';
import 'package:gestock/widgets/mobile/field/field1.dart';
import 'package:gestock/widgets/mobile/shared/boutoncontainer.dart';
import 'package:gestock/widgets/mobile/shared/text_moy.dart';
import 'package:gestock/widgets/mobile/shared/text_small.dart';
import 'package:go_router/go_router.dart';

import '../../../logic/login/login_bloc.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController mailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SizedBox(
          child: Stack(
            children: [
              Positioned(
                  child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img/bg.jpeg'),
                        fit: BoxFit.cover)),
              )),
              Positioned(
                top: MediaQuery.sizeOf(context).height * 0.30,
                child: Container(
                  padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                  height: MediaQuery.sizeOf(context).height * 0.70,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      color: bgcolorwhite,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 5),
                          child: TextMoy(
                              text: 'Login', color: colorBlue, size: 25)),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.70 - 80,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              BlocBuilder<LoginBloc, LoginState>(
                                builder: (context, state) {
                                  (state as LoginInitial);
                                  return TextField1(
                                      marginHorizontal: 0,
                                      label: 'mail company',
                                      controller: mailController,
                                      onChanged: () {
                                        context.read<LoginBloc>().add(
                                            OnChangedMail(
                                                mail: mailController.text));
                                      },
                                      etatField: state.mail);
                                },
                              ),
                              BlocBuilder<LoginBloc, LoginState>(
                                builder: (context, state) {
                                  (state as LoginInitial);
                                  return TextField1(
                                      marginHorizontal: 0,
                                      label: 'password',
                                      controller: passwordController,
                                      onChanged: () {
                                        context.read<LoginBloc>().add(
                                            OnChangedPassword(
                                                password:
                                                    passwordController.text));
                                      },
                                      etatField: state.password);
                                },
                              ),
                              BlocBuilder<LoginBloc, LoginState>(
                                builder: (context, state) {
                                  (state as LoginInitial);
                                  return BoutonContainer(
                                      heightButton: 65,
                                      marginHorizontal: 0,
                                      title: 'Login',
                                      onSubmit: () {},
                                      etatButton: state.etat);
                                },
                              ),
                              const SizedBox(height: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const TextSmal(
                                    text: "Don't you have account ?",
                                    align: TextAlign.center,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      context.goNamed('signup');
                                    },
                                    child: TextMoy(
                                        text: ' sign up.', color: colorBlue),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
