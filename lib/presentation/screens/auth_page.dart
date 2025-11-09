import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:grimorio/core/providers/auth_controller.dart';
import 'package:grimorio/presentation/widgets/auth_header.dart';
import 'package:grimorio/presentation/widgets/auth_form_fields.dart';
import 'package:grimorio/presentation/widgets/auth_action_buttons.dart';
import 'package:grimorio/presentation/theme/app_colors.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AuthController(),
      child: Consumer<AuthController>(
        builder: (context, controller, child) {
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        AuthHeader(isLogin: controller.isLogin),
                        if (!controller.isLogin)
                          TextFormField(
                            controller: controller.nameController,
                            decoration: const InputDecoration(
                              labelText: 'Nome',
                              prefixIcon: Icon(Icons.person),
                            ),
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, insira seu nome.';
                              }
                              return null;
                            },
                          ),
                        const SizedBox(height: 16),
                        AuthFormFields(
                          emailController: controller.emailController,
                          passwordController: controller.passwordController,
                          confirmPasswordController:
                          controller.confirmPasswordController,
                          isLogin: controller.isLogin,
                          obscurePassword: controller.obscurePassword,
                          onToggleObscurePassword:
                          controller.toggleObscurePassword,
                        ),
                        if (!controller.isLogin)
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: controller.termsAccepted,
                                  onChanged: controller.toggleTerms,
                                  activeColor: AppColors.azulClaro,
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () =>
                                        controller.showTermsDialog(context),
                                    child: Text(
                                      'Ler e Aceitar Termos e Política',
                                      style: TextStyle(
                                        color: controller.termsAccepted
                                            ? Colors.green.shade300
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        AuthActionButtons(
                          isLogin: controller.isLogin,
                          isLoading: controller.isLoading,
                          onSubmit: () => controller.submit(context),
                          onResetPassword: () =>
                              controller.resetPassword(context),
                          onToggleAuthMode: controller.toggleAuthMode,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}