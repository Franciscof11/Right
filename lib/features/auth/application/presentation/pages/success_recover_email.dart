import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:right/features/auth/application/presentation/widgets/remove_glow_effect.dart';
import 'package:right/utils/const_colors.dart';

class SuccessRecoverEmail extends StatelessWidget {
  const SuccessRecoverEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final heightDisp = MediaQuery.of(context).size.height;
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: LightColors().primaryContainer,
        body: RemoveGlowEffect(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: heightDisp <= 670 ? 40 : 120),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 275),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 30,
                              right: 20,
                              left: 20,
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 12),
                                const Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.green,
                                  size: 44,
                                ),
                                const SizedBox(height: 10),
                                Expanded(
                                  child: Text(
                                    'Email enviado com sucesso!',
                                    style: GoogleFonts.raleway(
                                      color: LightColors().onPrimaryContainer,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/imgs/success_email_recover.svg',
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/SignInPage');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: LightColors().onPrimaryContainer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 20,
                    ),
                  ),
                  child: Text.rich(
                    TextSpan(
                      text: 'Voltar a tela de ',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'login',
                          style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
