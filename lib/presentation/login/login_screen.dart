import 'package:flutter/material.dart';
import 'package:mozotap/core/router/routers.dart';
import 'package:mozotap/presentation/utils/size_responsive.dart';
import 'package:mozotap/presentation/widgets/button_primary_widget.dart';
import 'package:mozotap/presentation/widgets/field_primary_widget.dart';
import 'package:mozotap/presentation/widgets/text_body_widget.dart';
import 'package:mozotap/presentation/widgets/text_button_widget.dart';
import 'package:mozotap/presentation/widgets/text_title_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return DesktopLogin();
      },
    );
  }
}

class DesktopLogin extends StatelessWidget {
  DesktopLogin({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: SizeResponsive.size400(context),
          padding: EdgeInsets.all(SizeResponsive.size16(context)),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/icons/mozotap.png', height: 100),
                const SizedBox(height: 20),
                const TextTitleWidget(text: 'Inicia sesión'),
                const SizedBox(height: 20),
                FieldPrimaryWidget(
                  labelText: 'Correo electrónico',
                  placeholder: 'Ingresa tu correo electrónico',
                  fieldType: TextInputType.emailAddress,
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'El correo es requerido';
                    }
                    return null;
                  },
                ),
                SizedBox(height: SizeResponsive.size16Sm(context)),
                FieldPrimaryWidget(
                  labelText: 'Contraseña',
                  placeholder: 'Ingresa tu contraseña',
                  fieldType: TextInputType.emailAddress,
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'La contraseña es requerido';
                    }
                    return null;
                  },
                ),
                SizedBox(height: SizeResponsive.size16Sm(context)),
                ButtonPrimaryWidget(
                  text: 'Ingresar',
                  context: context,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Handle login logic
                    }
                  },
                ),
                SizedBox(height: SizeResponsive.size16Sm(context)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TextBodyWidget(text: '¿No tienes una cuenta?'),
                    TextButtonWidget(
                      text: 'Regístrate gratis',
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.signUp);
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
