import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:right/features/auth/application/presentation/widgets/custom_text_form_field.dart';
import 'package:right/utils/const_colors.dart';

class RecoverPasswordPage extends StatefulWidget {
  const RecoverPasswordPage({super.key});

  @override
  State<RecoverPasswordPage> createState() => _RecoverPasswordPageState();
}

class _RecoverPasswordPageState extends State<RecoverPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors().primaryContainer,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_circle_left_outlined,
                      color: LightColors().onPrimaryContainer,
                      size: 38,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Voltar',
                    style: GoogleFonts.raleway(
                      color: LightColors().onPrimaryContainer,
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recuperar Senha',
                  style: GoogleFonts.raleway(
                    color: LightColors().onPrimaryContainer,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  text: 'Ops!',
                  style: GoogleFonts.raleway(
                    color: LightColors().primary,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text:
                          ' Parece que você esqueceu sua senha, mas não se preocupe, estamos aqui para te ajudar a recuperar o acesso à sua conta.',
                      style: GoogleFonts.raleway(
                        color: DarkColors().primaryContainer,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SvgPicture.asset(
                'assets/imgs/forgot_password.svg',
                width: MediaQuery.of(context).size.width,
                height: 300,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    text: 'Insira seu ',
                    style: GoogleFonts.raleway(
                      color: LightColors().onPrimaryContainer,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: 'E-mail ',
                        style: GoogleFonts.raleway(
                          color: LightColors().onPrimaryContainer,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'abaixo',
                        style: GoogleFonts.raleway(
                          color: LightColors().onPrimaryContainer,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    text: 'enviaremos um ',
                    style: GoogleFonts.raleway(
                      color: LightColors().onPrimaryContainer,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: 'e-mail de renovação de senha',
                        style: GoogleFonts.raleway(
                          color: LightColors().onPrimaryContainer,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' para o seu endereço de email cadastrado.',
                        style: GoogleFonts.raleway(
                          color: LightColors().onPrimaryContainer,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: TextEditingController(),
                label: 'E-mail',
                type: FormTypes.email,
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/SuccessRecoverEmail');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 40,
                    ),
                    backgroundColor: LightColors().onPrimaryContainer,
                  ),
                  child: Text(
                    'Enviar',
                    style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}
