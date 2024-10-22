import 'package:flutter/material.dart';
import 'package:streamplay/src/core/routers.dart';
import 'package:streamplay/src/ui/theme/app_text_styles.dart';
import 'package:streamplay/src/ui/widgets/primary_button.dart';
import 'package:streamplay/src/ui/widgets/primary_field.dart';
import 'package:streamplay/src/ui/widgets/textfield_primary_widget.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({super.key});

  @override
  State<VerifyEmailPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<VerifyEmailPage> {
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
                  maxWidth: 420,
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
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.topLeft,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.arrow_back_ios, color: AppColors.textColor),
                const SizedBox(width: 4),
                Text('Volver', style: AppTextStyles.textButtonLinkUnderline)
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Verifica tu correo electrónico',
          textAlign: TextAlign.center,
          style: AppTextStyles.textTitle1,
        ),
        const SizedBox(height: 20),
        Text(
          'Busca en tu correo electrónico un código de 8 dígitos de StreamPlay e introdúcelo a continuación.',
          textAlign: TextAlign.center,
          style: AppTextStyles.textBody,
        ),
        const SizedBox(height: 16),
        const TextFieldPrimary(
          enabled: false,
          labelText: 'Correo electrónico',
          hintText: 'frank.lopezcoras@gmail.com',
          typeText: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        const TextFieldPrimary(
          labelText: 'Código de verificación',
          hintText: 'Ingresa código de 8 dígitos',
          typeText: TextInputType.number,
        ),
        const SizedBox(height: 30),
        PrimaryButtonWidget(
          onTap: () {},
          text: 'Verificar correo electrónico',
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
