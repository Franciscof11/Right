import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:right/features/auth/application/presentation/widgets/custom_text_form_field.dart';
import 'package:right/features/auth/application/presentation/widgets/remove_glow_effect.dart';
import 'package:right/utils/const_colors.dart';

class _SignInPageState extends State<SignInPage> {
  bool boxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors().primaryContainer,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
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
                      const SizedBox(
                        height: 40,
                      ),
                      SvgPicture.asset(
                        'assets/imgs/logo.svg',
                        width: 85,
                        height: 85,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                  //
                  // Form
                  //
                  const SizedBox(
                    height: 18,
                  ),
                  Material(
                    elevation: 12,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Fazer Login',
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                color: LightColors().primary,
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
                                    color: LightColors().primary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                children: [
                                  TextSpan(
                                      text: 'right',
                                      style: TextStyle(
                                        color: LightColors().onPrimaryContainer,
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
                                        activeColor: LightColors().primary,
                                        checkColor: LightColors().onPrimary,
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
                                        color: LightColors().onPrimaryContainer,
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
                                                color: LightColors()
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
                                                color: LightColors().primary,
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
                  ),
                  const SizedBox(height: 30),

                  const SizedBox(height: 30),

                  const SizedBox(height: 50),
                  const Text(
                    'Copyright © right ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    'Desenvolvido por Upon',
                    style: TextStyle(
                        color: Colors.white,
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
