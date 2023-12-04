import 'package:right/features/auth/application/presentation/pages/recover_password_page.dart';
import 'package:right/features/auth/application/presentation/pages/sign_in_page.dart';
import 'package:right/features/auth/application/presentation/pages/sign_up_page.dart';
import 'package:right/features/auth/application/presentation/pages/success_recover_email.dart';
import 'package:right/features/auth/application/presentation/pages/successful_registration_page.dart';
import 'package:right/features/flash_cards/application/presentation/pages/home_page.dart';

final routes = {
  '/SignInPage': (context) => const SignInPage(),
  '/SignUpPage': (context) => const SignUpPage(),
  '/SucessfulRegistration': (context) => const SuccessfulRegistrationPage(),
  '/RecoverPasswordPage': (context) => const RecoverPasswordPage(),
  '/SuccessRecoverEmail': (context) => const SuccessRecoverEmail(),
  '/HomePage': (context) => const HomePage(),
};
