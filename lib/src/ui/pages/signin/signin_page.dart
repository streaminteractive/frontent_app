import 'package:flutter/material.dart';
import 'package:streamplay/src/core/routers.dart';
import 'package:streamplay/src/ui/theme/app_text_styles.dart';
import 'package:streamplay/src/ui/widgets/divider_with_text_widget.dart';
import 'package:streamplay/src/ui/widgets/primary_button.dart';
import 'package:streamplay/src/ui/widgets/social_button.dart';
import 'package:streamplay/src/ui/widgets/textfield_primary_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWebScreen(constraints);
          } else {
            return _buildMobileScreen(constraints);
          }
        },
      ),
    );
  }

  Widget _buildWebScreen(BoxConstraints constraints) {
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            'assets/images/login.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 400,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: _buildLoginForm(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileScreen(BoxConstraints constraints) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: constraints.maxHeight,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          child: _buildLoginForm(),
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 40),
        Text(
          'Iniciar Sesión',
          textAlign: TextAlign.center,
          style: AppTextStyles.textTitle1,
        ),
        const SizedBox(height: 20),
        Text(
          'Ingresa para poder empezar tu nueva aventura',
          textAlign: TextAlign.center,
          style: AppTextStyles.textBody,
        ),
        const SizedBox(height: 40),
        _buildButtonGoogle(),
        const SizedBox(height: 16),
        _buildButtonFacebook(),
        const SizedBox(height: 30),
        const DividerWithTextWidget(text: "O ingrese con"),
        const SizedBox(height: 30),
        const TextFieldPrimary(
          labelText: 'Correo electrónico',
          hintText: 'Ingresa tu correo electrónico',
          typeText: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        const TextFieldPrimary(
          labelText: 'Contraseña',
          hintText: 'Ingresa tu contraseña',
          typeText: TextInputType.text,
        ),
        const SizedBox(height: 30),
        PrimaryButtonWidget(
          onTap: () {},
          text: 'Iniciar sesión',
          enabled: true,
        ),
        const SizedBox(height: 24),
        _buildSignUp(),
        const SizedBox(height: 40),
      ],
    );
  }

  Widget _buildSignUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿Eres nuevo?',
          style: AppTextStyles.textBody,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.signUp);
          },
          child: Text(
            'Regístrate',
            style: AppTextStyles.textButtonLink,
          ),
        ),
      ],
    );
  }

  Widget _buildButtonGoogle() {
    return SocialButtonWidget(
      imagePath: 'assets/icons/google.png',
      text: 'Continuar con Google',
      onPressed: () {},
    );
  }

  Widget _buildButtonFacebook() {
    return SocialButtonWidget(
      imagePath: 'assets/icons/facebook.png',
      text: 'Continuar con Facebook',
      onPressed: () {},
    );
  }
}
