import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:right/features/auth/application/presentation/widgets/custom_text_form_field.dart';
import 'package:right/utils/const_colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors().primaryContainer,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
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
                    'Crie sua conta',
                    style: GoogleFonts.raleway(
                      color: LightColors().onPrimaryContainer,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        controller: TextEditingController(),
                        label: 'Nome',
                        type: FormTypes.generic,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: CustomTextFormField(
                        controller: TextEditingController(),
                        label: 'Sobrenome',
                        type: FormTypes.generic,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  controller: TextEditingController(),
                  label: 'E-mail',
                  type: FormTypes.email,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  controller: TextEditingController(),
                  label: 'Senha',
                  type: FormTypes.password,
                  isSecret: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      softWrap: true,
                      textAlign: TextAlign.start,
                      '• Mínimo de 6 caracteres.',
                      style: GoogleFonts.raleway(
                        color: LightColors().onPrimaryContainer,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      softWrap: true,
                      textAlign: TextAlign.start,
                      '• Use letras maiúsculas, minúsculas, números e símbolos.',
                      style: GoogleFonts.raleway(
                        color: LightColors().onPrimaryContainer,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  controller: TextEditingController(),
                  label: 'Confirmar Senha',
                  type: FormTypes.password,
                  isSecret: true,
                ),
                const SizedBox(height: 60),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/SucessfulRegistration');
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
                      'Cadastrar',
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
      ),
    );
  }
}
