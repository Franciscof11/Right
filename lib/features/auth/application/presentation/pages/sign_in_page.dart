import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:right/features/auth/application/presentation/widgets/custom_text_form_field.dart';
import 'package:right/utils/const_colors.dart';
import 'package:right/utils/toast.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: LightColors().primaryContainer,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
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
                                  controller: emailController,
                                  label: 'E-mail',
                                  type: FormTypes.email,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomTextFormField(
                                  controller: passwordController,
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
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/RecoverPasswordPage');
                                      },
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
                                  height: 25,
                                ),
                                Text(
                                  'Não possui conta?',
                                  style: GoogleFonts.raleway(
                                    height: 0,
                                    color: LightColors().onPrimaryContainer,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/SignUpPage');
                                  },
                                  child: Text(
                                    'Cadastre-se',
                                    style: GoogleFonts.raleway(
                                      color: LightColors().primary,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      final validForm =
                                          formKey.currentState?.validate() ??
                                              false;

                                      if (validForm) {
                                        showToast(
                                          message: 'Credenciais incorretas',
                                          type: ToastType.error,
                                          context: context,
                                          marginRight: 115,
                                        );
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: ContinuousRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 15,
                                        horizontal: 80,
                                      ),
                                      backgroundColor:
                                          LightColors().onPrimaryContainer,
                                    ),
                                    child: Text(
                                      'Entrar',
                                      style: GoogleFonts.raleway(
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontWeight: FontWeight.w600,
                                      ),
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
      ),
    );
  }
}
