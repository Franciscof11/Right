import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:right/features/auth/application/presentation/widgets/remove_glow_effect.dart';
import 'package:right/utils/const_colors.dart';

class SuccessfulRegistrationPage extends StatelessWidget {
  const SuccessfulRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: RemoveGlowEffect(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 60),
                Text(
                  'Cadastro realizado com sucesso!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.raleway(
                    height: 1,
                    color: LightColors().onPrimaryContainer,
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                SvgPicture.asset(
                  'assets/imgs/sucess_registration.svg',
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                ),
                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 105,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: LightColors().primary,
                          width: 2,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        children: [
                          const SizedBox(width: 20),
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: LightColors()
                                    .primary, // Cor da borda desejada
                                width: 3, // Largura da borda
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                text:
                                    'Para garantir sua segurança e acesso total, por favor, ',
                                style: GoogleFonts.raleway(
                                  color: LightColors().onPrimaryContainer,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                                children: [
                                  TextSpan(
                                    text:
                                        'verifique seu e-mail para confirmar o cadastro.',
                                    style: GoogleFonts.raleway(
                                      color: LightColors().primary,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/SignInPage');
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: LightColors().primaryContainer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 20,
                    ),
                  ),
                  child: Text.rich(
                    TextSpan(
                      text: 'Conheça o ',
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'Right',
                          style: GoogleFonts.raleway(
                            color: LightColors().primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
