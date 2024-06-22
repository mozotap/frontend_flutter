import 'package:flutter/material.dart';
import 'package:mozotap/core/router/routers.dart';
import 'package:mozotap/presentation/utils/size_responsive.dart';
import 'package:mozotap/presentation/widgets/button_primary_widget.dart';
import 'package:mozotap/presentation/widgets/button_social_widget.dart';
import 'package:mozotap/presentation/widgets/dropdown_primary_widget.dart';
import 'package:mozotap/presentation/widgets/field_primary_widget.dart';
import 'package:mozotap/presentation/widgets/terms_widget.dart';
import 'package:mozotap/presentation/widgets/text_body_widget.dart';
import 'package:mozotap/presentation/widgets/text_button_secondary_widget.dart';
import 'package:mozotap/presentation/widgets/text_button_widget.dart';
import 'package:mozotap/presentation/widgets/text_title_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final List<String> items = [
    'Café',
    'Restaurante',
    'Bar/Bebidas',
    'Fast food',
    'Heladería',
    'Pizzería'
  ];

  String? selectedValue;
  int currentStep = 1;

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
                  Image.asset(
                    'assets/icons/mozotap.png',
                    height: SizeResponsive.responsiveSize(context, 48),
                  ),
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
      child: SizedBox(
        width: SizeResponsive.size380(context),
        child: _currentBody(),
      ),
    );
  }

  Widget _currentBody() {
    switch (currentStep) {
      case 1:
        return _stepOneForm();
      case 2:
        return _stepTwoForm();
      default:
        return _stepThrewForm();
    }
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
              setState(() {
                currentStep = 2;
              });
            },
          ),
          SizedBox(height: SizeResponsive.size16Sm(context)),
          ButtonSocialWidget(
            svgIcon: 'assets/icons/facebook.svg',
            label: 'Continuar con Facebook',
            context: context,
            onPressed: () {
              setState(() {
                currentStep = 2;
              });
            },
          ),
          SizedBox(height: SizeResponsive.size16Sm(context)),
          ButtonSocialWidget(
            svgIcon: 'assets/icons/google.svg',
            label: 'Continuar con Google',
            context: context,
            onPressed: () {
              setState(() {
                currentStep = 2;
              });
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

  Widget _stepTwoForm() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TextTitleWidget(text: '¡Empecemos!'),
              SizedBox(height: SizeResponsive.size14Sm(context)),
              const TextBodyWidget(
                  text: 'Completa tus datos personales',
                  textAlign: TextAlign.center),
            ],
          ),
          SizedBox(height: SizeResponsive.size14Sm(context)),
          Row(
            children: [
              Expanded(
                child: FieldPrimaryWidget(
                  labelText: 'Nombres',
                  placeholder: 'Tus nombres',
                  fieldType: TextInputType.emailAddress,
                  controller: _firstNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'El correo es requerido';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(width: SizeResponsive.size14Sm(context)),
              Expanded(
                child: FieldPrimaryWidget(
                  labelText: 'Apellidos',
                  placeholder: 'Tus apellidos',
                  fieldType: TextInputType.emailAddress,
                  controller: _lastNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'El correo es requerido';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: SizeResponsive.size16Sm(context)),
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
            fieldType: TextInputType.visiblePassword,
            controller: _passwordController,
            isPassword: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'La contraseña es requerido';
              }
              return null;
            },
          ),
          SizedBox(height: SizeResponsive.size16Sm(context)),
          Row(
            children: [
              Expanded(
                child: TextButtonSecondaryWidget(
                  text: 'Volver',
                  onPressed: () {
                    setState(() {
                      currentStep = 1;
                    });
                  },
                ),
              ),
              SizedBox(width: SizeResponsive.size14Sm(context)),
              Expanded(
                child: ButtonPrimaryWidget(
                  text: 'Continuar',
                  context: context,
                  onPressed: () {
                    setState(() {
                      currentStep = 3;
                    });
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _stepThrewForm() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TextTitleWidget(text: '¡Último paso!'),
              SizedBox(height: SizeResponsive.size14Sm(context)),
              const TextBodyWidget(
                  text: 'Cuéntanos sobre tu negocio',
                  textAlign: TextAlign.center),
            ],
          ),
          SizedBox(height: SizeResponsive.size14Sm(context)),
          FieldPrimaryWidget(
            labelText: 'Nombre del negocio',
            placeholder: 'Ingresa el nombre de tu negocio',
            fieldType: TextInputType.text,
            controller: _emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'El correo es requerido';
              }
              return null;
            },
          ),
          SizedBox(height: SizeResponsive.size14Sm(context)),
          DropdownPrimary(
            items: items,
            label: 'Categoría',
            selectedValue: selectedValue,
            hint: 'Selecciona',
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
          ),
          SizedBox(height: SizeResponsive.size16Sm(context)),
          Row(
            children: [
              Expanded(
                child: TextButtonSecondaryWidget(
                  text: 'Volver',
                  onPressed: () {
                    setState(() {
                      currentStep = 2;
                    });
                  },
                ),
              ),
              SizedBox(width: SizeResponsive.size14Sm(context)),
              Expanded(
                child: ButtonPrimaryWidget(
                  text: 'Empezar',
                  context: context,
                  onPressed: () {
                    setState(() {
                      currentStep = 3;
                    });
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
