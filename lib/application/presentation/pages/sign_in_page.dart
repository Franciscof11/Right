import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:right/application/presentation/widgets/custom_text_form_field.dart';
import 'package:right/application/presentation/widgets/remove_glow_effect.dart';
import 'package:right/utils/const_colors.dart';

class _SignInPageState extends State<SignInPage> {
  bool darkMode = false;
  bool boxValue = false;
  @override
  Widget build(BuildContext context) {
    void googleSign() {
      setState(() {
        darkMode = !darkMode;
      });
    }

    Color primaryTextColors =
        darkMode == true ? Colors.white : LightColors().primary;
    return Scaffold(
      backgroundColor: darkMode == true
          ? DarkColors().onPrimary
          : LightColors().primaryContainer,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: RemoveGlowEffect(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //
                  // Title App
                  //
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                      ),
                      SvgPicture.asset(
                        !darkMode
                            ? 'assets/imgs/logo.svg'
                            : 'assets/imgs/dark_logo.svg',
                        width: MediaQuery.of(context).size.width * 0.09,
                        height: MediaQuery.of(context).size.height * 0.09,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                    ],
                  ),
                  //
                  // Form
                  //
                  const SizedBox(
                    height: 18,
                  ),
                  Card(
                    color: darkMode == true
                        ? DarkColors().primaryContainer
                        : Colors.white,
                    elevation: 15,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Fazer Login',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: darkMode == true
                                  ? DarkColors().onPrimaryContainer
                                  : LightColors().primary,
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 34,
                        ),
                        Text.rich(
                          TextSpan(
                              text: 'Insira o usuário que você criou com o ',
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  color: primaryTextColors,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              children: [
                                TextSpan(
                                    text: 'right',
                                    style: TextStyle(
                                      color: darkMode == true
                                          ? DarkColors().primary
                                          : LightColors().onPrimaryContainer,
                                    ))
                              ]),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CustomTextField(
                                label: 'Usuário',
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      activeColor: darkMode == true
                                          ? DarkColors().primary
                                          : LightColors().primary,
                                      checkColor: darkMode == true
                                          ? DarkColors().onPrimary
                                          : LightColors().onPrimary,
                                      shape: ContinuousRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      value: boxValue,
                                      onChanged: (value) {
                                        setState(() {
                                          boxValue = !boxValue;
                                        });
                                      }),
                                  Text(
                                    'Lembrar de mim',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: darkMode == true
                                          ? DarkColors().primary
                                          : LightColors().onPrimaryContainer,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Text(
                                            'Esqueceu seu usuário?',
                                            style: GoogleFonts.inter(
                                              height: 0,
                                              color: darkMode == true
                                                  ? DarkColors()
                                                      .onPrimaryContainer
                                                  : LightColors()
                                                      .onPrimaryContainer,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Text(
                                            'Criar Conta',
                                            style: GoogleFonts.inter(
                                              height: 1,
                                              color: darkMode == true
                                                  ? DarkColors()
                                                      .onPrimaryContainer
                                                  : LightColors().primary,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                      ]),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),

                  const SizedBox(height: 30),

                  const SizedBox(height: 50),
                  Text(
                    'Copyright © right ',
                    style: TextStyle(
                        color: darkMode == true
                            ? DarkColors().primary
                            : Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Desenvolvido por Upon',
                    style: TextStyle(
                        color: darkMode == true
                            ? DarkColors().primary
                            : Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}
