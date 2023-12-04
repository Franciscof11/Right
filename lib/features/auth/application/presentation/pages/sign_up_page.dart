import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:right/features/auth/application/presentation/widgets/custom_text_form_field.dart';
import 'package:right/utils/const_colors.dart';
import 'package:right/utils/toast.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors().primaryContainer,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 45,
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
                        controller: nameController,
                        label: 'Nome',
                        type: FormTypes.generic,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: CustomTextFormField(
                        controller: surnameController,
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
                  controller: emailController,
                  label: 'E-mail',
                  type: FormTypes.email,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  controller: passwordController,
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
                  controller: confirmPasswordController,
                  label: 'Confirmar Senha',
                  type: FormTypes.password,
                  isSecret: true,
                ),
                const SizedBox(height: 60),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      final formValid =
                          formKey.currentState?.validate() ?? false;

                      if (formValid) {
                        if (passwordController.text !=
                            confirmPasswordController.text) {
                          showToast(
                            message: 'Senhas não coicidem!',
                            type: ToastType.error,
                            context: context,
                            marginRight: 120,
                          );
                        } else {
                          Navigator.pushNamed(
                              context, '/SucessfulRegistration');
                        }
                      }
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
