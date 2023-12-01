import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:right/features/auth/application/presentation/widgets/custom_text_form_field.dart';
import 'package:right/utils/const_colors.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors().primaryContainer,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                SvgPicture.asset(
                  'assets/imgs/logo.svg',
                  width: 90,
                  height: 90,
                ),
                const SizedBox(
                  height: 50,
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
                          height: 35,
                        ),
                        Text.rich(
                          TextSpan(
                              text: 'Insira seu login ',
                              style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                                  color: LightColors().primary,
                                  fontSize: 24,
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
                              CustomTextFormField(
                                controller: TextEditingController(),
                                label: 'E-mail',
                                type: FormTypes.email,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomTextFormField(
                                controller: TextEditingController(),
                                label: 'Senha',
                                type: FormTypes.password,
                                isSecret: true,
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      'Esqueceu a senha?',
                                      style: GoogleFonts.raleway(
                                        color: LightColors().primary,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 15,
                                      horizontal: 60,
                                    ),
                                    backgroundColor:
                                        LightColors().onPrimaryContainer,
                                  ),
                                  child: Text(
                                    'Entrar',
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: LightColors().primaryContainer,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'Esqueceu seu usuário?',
                                  style: GoogleFonts.raleway(
                                    height: 0,
                                    color: LightColors().onPrimaryContainer,
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
                                  style: GoogleFonts.raleway(
                                    height: 1,
                                    color: LightColors().primary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 35),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
