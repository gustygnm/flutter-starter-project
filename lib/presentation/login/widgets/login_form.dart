import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_project/core/l10n/localizations.dart';
import 'package:flutter_starter_project/core/utils/ui/button/button_primary.dart';
import 'package:flutter_starter_project/core/utils/ui/text_field/common_textfield.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key? key,
    required this.formLoginKey,
    required this.usernameController,
    required this.passwordController,
    this.onLogin,
  }) : super(key: key);

  final GlobalKey<FormState> formLoginKey;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final Function()? onLogin;

  @override
  Widget build(BuildContext context) {
    final labels = context.localizations;

    return Form(
      key: formLoginKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            labels.auth.login,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 20),
          CommonTextField(
            key: const Key('usernameField'),
            maxLength: 50,
            controller: usernameController,
            label: 'Email',
            hint: 'Masukan email',
            textInputType: TextInputType.text,
            autoValidateMode: AutovalidateMode.onUserInteraction,
            inputFormatter: const [],
          ),
          const SizedBox(height: 10),
          _PasswordField(
            key: const Key('passwordField'),
            passwordController: passwordController,
            labels: labels,
          ),
          const SizedBox(height: 20),
          ButtonPrimary(
            key: const Key('loginBtn'),
            textValue: 'Login',
            onTapButton: onLogin,
          ),
        ],
      ),
    );
  }
}

class _PasswordField extends StatelessWidget {
  const _PasswordField({
    Key? key,
    required this.passwordController,
    required this.labels,
  }) : super(key: key);

  final TextEditingController passwordController;
  final AppLocalizationsData labels;

  @override
  Widget build(BuildContext context) {
    final obscure = ValueNotifier<bool>(true);

    return ValueListenableBuilder(
      valueListenable: obscure,
      builder: (context, _, __) => TextFormField(
        controller: passwordController,
        obscureText: obscure.value,
        decoration: InputDecoration(
          hintText: labels.form.password,
          prefixIcon: const Icon(FluentIcons.lock_closed_24_regular),
          suffixIcon: IconButton(
            key: const Key('obscureButton'),
            onPressed: () {
              obscure.value = !obscure.value;
            },
            icon: obscure.value
                ? const Icon(FluentIcons.eye_24_regular)
                : const Icon(FluentIcons.eye_off_24_regular),
          ),
        ),
        validator: RequiredValidator(
          errorText: labels.form.required.password,
        ),
      ),
    );
  }
}
