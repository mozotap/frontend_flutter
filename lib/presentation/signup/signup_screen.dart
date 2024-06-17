import 'package:flutter/material.dart';
import 'package:mozotap/core/router/routers.dart';
import 'package:mozotap/presentation/utils/size_responsive.dart';
import 'package:mozotap/presentation/widgets/button_social_widget.dart';
import 'package:mozotap/presentation/widgets/terms_widget.dart';
import 'package:mozotap/presentation/widgets/text_body_widget.dart';
import 'package:mozotap/presentation/widgets/text_button_widget.dart';
import 'package:mozotap/presentation/widgets/text_title_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(SizeResponsive.size16Sm(context)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/icons/mozotap.png', height: 100),
                  const TextBodyWidget(text: 'Paso 1 de 3'),
                ],
              ),
              SizedBox(height: SizeResponsive.size16(context)),
              Expanded(
                child: _bodyForm(),
              ),
              const TermsWidget()
            ],
          ),
        ),
      ),
    );
  }

  Widget _bodyForm() {
    return Center(
      child: Container(
        width: SizeResponsive.size380(context),
        child: _stepOneForm(),
      ),
    );
  }

  Widget _stepOneForm() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TextTitleWidget(text: 'Bienvenido a MozoTap'),
              SizedBox(height: SizeResponsive.size14Sm(context)),
              const TextBodyWidget(
                  text: 'Selecciona una opción para continuar'),
            ],
          ),
          SizedBox(height: SizeResponsive.size16Sm(context)),
          ButtonSocialWidget(
            svgIcon: 'assets/icons/gmail.svg',
            label: 'Continuar con correo electrónico',
            context: context,
            onPressed: () {
              // Lógica de inicio de sesión con Google
            },
          ),
          SizedBox(height: SizeResponsive.size16Sm(context)),
          ButtonSocialWidget(
            svgIcon: 'assets/icons/facebook.svg',
            label: 'Continuar con Facebook',
            context: context,
            onPressed: () {
              // Lógica de inicio de sesión con Google
            },
          ),
          SizedBox(height: SizeResponsive.size16Sm(context)),
          ButtonSocialWidget(
            svgIcon: 'assets/icons/google.svg',
            label: 'Continuar con Google',
            context: context,
            onPressed: () {
              // Lógica de inicio de sesión con Google
            },
          ),
          SizedBox(height: SizeResponsive.size16(context)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextBodyWidget(text: '¿Ya tienes una cuenta?'),
              TextButtonWidget(
                text: 'Inicia sesión',
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.signIn);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
