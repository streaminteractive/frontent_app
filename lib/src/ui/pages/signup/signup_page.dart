import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:streamplay/src/core/routers.dart';
import 'package:streamplay/src/ui/theme/app_text_styles.dart';
import 'package:streamplay/src/ui/widgets/primary_button.dart';
import 'package:streamplay/src/ui/widgets/textfield_primary_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignUpPage> {
  bool _isChecked = false;

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
          'Bienvenido a StreamPlay',
          textAlign: TextAlign.center,
          style: AppTextStyles.textTitle1,
        ),
        const SizedBox(height: 20),
        Text(
          'Crea una cuenta y empieza una nueva forma de hacer transmisiones',
          textAlign: TextAlign.center,
          style: AppTextStyles.textBody,
        ),
        const SizedBox(height: 30),
        _buildFullName(),
        const SizedBox(height: 16),
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
        _buildPrivacy(),
        const SizedBox(height: 30),
        PrimaryButtonWidget(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.verifyEmail);
          },
          text: 'Crear cuenta',
          enabled: _isChecked,
        ),
        const SizedBox(height: 24),
        _buildSignUp(),
        const SizedBox(height: 40),
      ],
    );
  }

  Widget _buildFullName() {
    return const Row(
      children: [
        Expanded(
          child: TextFieldPrimary(
            labelText: 'Nombres',
            hintText: 'Ingresa tus nombres',
            typeText: TextInputType.emailAddress,
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: TextFieldPrimary(
            labelText: 'Apellidos',
            hintText: 'Ingresa tus apellidos',
            typeText: TextInputType.emailAddress,
          ),
        ),
      ],
    );
  }

  Widget _buildPrivacy() {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue!;
            });
          },
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                const TextSpan(text: 'Acepto los '),
                TextSpan(
                  text: 'Términos de servicio',
                  style: AppTextStyles.textButtonLinkUnderline,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('Términos de servicio clickeado');
                    },
                ),
                const TextSpan(text: ' y la '),
                TextSpan(
                  text: 'Política de privacidad',
                  style: AppTextStyles.textButtonLinkUnderline,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('Política de privacidad clickeada');
                    },
                ),
                const TextSpan(text: ' de Streamlabs.'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿Ya tienes una cuenta?',
          style: AppTextStyles.textBody,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.signIn);
          },
          child: Text(
            'Ingresa',
            style: AppTextStyles.textButtonLink,
          ),
        ),
      ],
    );
  }

}
