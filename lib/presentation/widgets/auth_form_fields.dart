import 'package:flutter/material.dart';

class AuthFormFields extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController? confirmPasswordController;
  final bool isLogin;
  final bool obscurePassword;
  final VoidCallback onToggleObscurePassword;
  final bool termsAccepted;
  final ValueChanged<bool?> onToggleTerms;
  final VoidCallback onShowTermsDialog;

  const AuthFormFields({
    super.key,
    required this.emailController,
    required this.passwordController,
    this.confirmPasswordController,
    required this.isLogin,
    required this.obscurePassword,
    required this.onToggleObscurePassword,
    required this.termsAccepted,
    required this.onToggleTerms,
    required this.onShowTermsDialog,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: emailController,
          decoration: const InputDecoration(
            labelText: 'Email',
            prefixIcon: Icon(Icons.email),
          ),
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor, insira seu email.';
            }
            if (!value.contains('@')) {
              return 'Por favor, insira um email válido.';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),
        TextFormField(
          controller: passwordController,
          decoration: InputDecoration(
            labelText: 'Senha',
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: IconButton(
              icon: Icon(
                obscurePassword ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: onToggleObscurePassword,
            ),
          ),
          obscureText: obscurePassword,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor, insira sua senha.';
            }
            if (value.length < 6) {
              return 'A senha deve ter pelo menos 6 caracteres.';
            }
            return null;
          },
        ),
        if (!isLogin) ...[
          const SizedBox(height: 16),
          TextFormField(
            controller: confirmPasswordController,
            decoration: InputDecoration(
              labelText: 'Confirmar Senha',
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: Icon(
                  obscurePassword ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: onToggleObscurePassword,
              ),
            ),
            obscureText: obscurePassword,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, confirme sua senha.';
              }
              if (value != passwordController.text) {
                return 'As senhas não coincidem.';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Checkbox(
                value: termsAccepted,
                onChanged: onToggleTerms,
                activeColor: Theme.of(context).colorScheme.secondary,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: onShowTermsDialog,
                  child: const Text(
                    'Ler e Aceitar Termos e Política',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}