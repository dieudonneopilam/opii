import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestock/logic/signup/sign_up_bloc.dart';
import 'package:gestock/utils/colors.dart';
import 'package:gestock/widgets/mobile/field/field1.dart';
import 'package:gestock/widgets/mobile/shared/boutoncontainer.dart';
import 'package:gestock/widgets/mobile/shared/text_moy.dart';
import 'package:gestock/widgets/mobile/shared/text_small.dart';
import 'package:go_router/go_router.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController mailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmController = TextEditingController();
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
                              text: 'Sign up', color: colorBlue, size: 25)),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.70 - 80,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              BlocBuilder<SignUpBloc, SignUpState>(
                                builder: (context, state) {
                                  (state as SignUpInitial);
                                  return TextField1(
                                      marginHorizontal: 0,
                                      label: 'mail company',
                                      controller: mailController,
                                      onChanged: () {
                                        context.read<SignUpBloc>().add(
                                            OnChangedMail(
                                                mail: mailController.text));
                                      },
                                      etatField: state.mail);
                                },
                              ),
                              BlocBuilder<SignUpBloc, SignUpState>(
                                builder: (context, state) {
                                  (state as SignUpInitial);
                                  return TextField1(
                                      marginHorizontal: 0,
                                      label: 'password',
                                      controller: passwordController,
                                      onChanged: () {
                                        context.read<SignUpBloc>().add(
                                            OnChangedPassword(
                                                password:
                                                    passwordController.text));
                                      },
                                      etatField: state.password);
                                },
                              ),
                              BlocBuilder<SignUpBloc, SignUpState>(
                                builder: (context, state) {
                                  (state as SignUpInitial);
                                  return TextField1(
                                      marginHorizontal: 0,
                                      label: 'confirm password',
                                      controller: confirmController,
                                      onChanged: () {
                                        context.read<SignUpBloc>().add(
                                            OnChangedConfirm(
                                                confirm:
                                                    confirmController.text));
                                      },
                                      etatField: state.confirm);
                                },
                              ),
                              BlocBuilder<SignUpBloc, SignUpState>(
                                builder: (context, state) {
                                  (state as SignUpInitial);
                                  return BoutonContainer(
                                      heightButton: 65,
                                      marginHorizontal: 0,
                                      title: 'Sign up',
                                      onSubmit: () {
                                        context.read<SignUpBloc>().add(OnSubmit(
                                            confirm: confirmController.text,
                                            password: passwordController.text));
                                      },
                                      etatButton: state.etat);
                                },
                              ),
                              const SizedBox(height: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const TextSmal(
                                    text: 'Do you have account ?',
                                    align: TextAlign.center,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      context.goNamed('login');
                                    },
                                    child: TextMoy(
                                      text: ' Login here.',
                                      color: colorBlue,
                                    ),
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
