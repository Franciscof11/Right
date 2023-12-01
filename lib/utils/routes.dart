import 'package:right/features/auth/application/presentation/pages/sign_in_page.dart';
import 'package:right/features/auth/application/presentation/pages/sign_up_page.dart';
import 'package:right/features/auth/application/presentation/pages/successful_registration_page.dart';
import 'package:right/features/flash_cards/application/presentation/pages/home_page.dart';

final routes = {
  '/SignInPage': (context) => const SignInPage(),
  '/SignUpPage': (context) => const SignUpPage(),
  '/SucessfulRegistration': (context) => const SuccessfulRegistrationPage(),
  '/HomePage': (context) => const HomePage(),
};
