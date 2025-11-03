import 'package:flutter/material.dart';

class AuthActionButtons extends StatelessWidget {
  final bool isLogin;
  final bool isLoading;
  final VoidCallback onSubmit;
  final VoidCallback onResetPassword;
  final VoidCallback onToggleAuthMode;

  const AuthActionButtons({
    super.key,
    required this.isLogin,
    required this.isLoading,
    required this.onSubmit,
    required this.onResetPassword,
    required this.onToggleAuthMode,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (isLogin)
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: isLoading ? null : onResetPassword,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 8.0),
              ),
              child: const Text(
                'Esqueceu a senha?',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
            ),
          ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: isLoading ? null : onToggleAuthMode,
                child: Text(
                  isLogin ? 'Cadastre-se' : 'Faça o login',
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                onPressed: isLoading ? null : onSubmit,
                child: isLoading
                    ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  ),
                )
                    : Text(isLogin ? 'Login' : 'Cadastrar'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}