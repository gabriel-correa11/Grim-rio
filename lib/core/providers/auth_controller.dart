import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grimorio/core/services/auth_service.dart';
import 'package:grimorio/core/services/database_service.dart';
import 'package:grimorio/presentation/theme/app_colors.dart';

class AuthController with ChangeNotifier {
  final AuthService _authService = AuthService();
  final DatabaseService _databaseService = DatabaseService();

  bool _isLogin = true;
  bool _obscurePassword = true;
  bool _isLoading = false;
  bool _termsAccepted = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
  TextEditingController();

  bool get isLogin => _isLogin;
  bool get obscurePassword => _obscurePassword;
  bool get isLoading => _isLoading;
  bool get termsAccepted => _termsAccepted;

  void toggleAuthMode() {
    _isLogin = !_isLogin;
    _termsAccepted = false;
    _clearControllers();
    notifyListeners();
  }

  void toggleObscurePassword() {
    _obscurePassword = !_obscurePassword;
    notifyListeners();
  }

  void toggleTerms(bool? newValue) {
    _termsAccepted = newValue ?? false;
    notifyListeners();
  }

  void showTermsDialog(BuildContext context) {
    const String termsText = '''
Bem-vindo ao Grimório! Estes Termos de Uso ("Termos") regem seu acesso e uso do nosso aplicativo móvel ("App") e quaisquer serviços relacionados oferecidos por Gabriel Correa ("nós", "nosso"). Ao criar uma conta ou usar nosso App, você concorda em cumprir estes Termos. Se você não concordar, por favor, não use o App.

1. Aceitação dos Termos
Ao acessar ou usar o App, você confirma que leu, entendeu e concorda em estar vinculado a estes Termos e à nossa Política de Privacidade (Nota: Link a ser adicionado posteriormente).

2. Elegibilidade e Contas de Usuário
Idade: Para criar uma conta, você deve ter pelo menos 13 anos de idade ou ter o consentimento de seus pais ou responsáveis legais.
Registro: Você concorda em fornecer informações precisas e completas ao criar sua conta.
Uso da Conta: Sua conta é pessoal e intransferível.

3. Uso do Aplicativo
Propósito: O Grimório foi projetado para incentivar o hábito de leitura através de quizzes e elementos de gamificação.
Conduta: Você concorda em usar o App apenas para fins legais.

4. Conteúdo e Propriedade Intelectual
O App e seu conteúdo original são de nossa propriedade e protegidos por leis de direitos autorais.

5. Gamificação (XP, Níveis, Conquistas)
Os pontos (XP), níveis e conquistas são elementos virtuais apenas para fins de entretenimento dentro do App e não possuem valor monetário real.

6. Privacidade
Nossa coleta e uso de suas informações pessoais são regidos por nossa Política de Privacidade. Ao usar o App, você consente com tal coleta e uso.

7. Isenção de Garantias
O App é fornecido "como está", sem garantias de qualquer tipo.

8. Limitação de Responsabilidade
Não seremos responsáveis por quaisquer danos indiretos ou consequenciais resultantes do seu uso do App.

9. Modificações nos Termos
Reservamo-nos o direito de modificar estes Termos a qualquer momento.

10. Legislação Aplicável
Estes Termos serão regidos pelas leis da República Federativa do Brasil.

11. Contato
Se você tiver alguma dúvida sobre estes Termos, entre em contato conosco em: gabrielpcorrea2002@gmail.com.
''';

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppColors.azulRoyal,
        title: const Text('TERMOS E POLÍTICA',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18)),
        content: const Scrollbar(
          thumbVisibility: true,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text(
                termsText,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ),
        actionsPadding:
        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        actions: <Widget>[
          TextButton(
            child: const Text('RECUSAR',
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          ),
          TextButton(
            child: const Text('ACEITAR',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
            onPressed: () {
              toggleTerms(true);
              Navigator.of(ctx).pop();
            },
          ),
        ],
      ),
    );
  }

  Future<void> submit(BuildContext context) async {
    final isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }

    if (!_isLogin && !_termsAccepted) {
      _showFeedbackDialog(context, 'Termos e Condições',
          'Você precisa aceitar os Termos e Condições para criar uma conta.');
      return;
    }

    _setLoading(true);

    try {
      if (_isLogin) {
        await _authService.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
      } else {
        final userCredential =
        await _authService.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
          name: nameController.text.trim(),
        );

        if (userCredential.user != null) {
          await _databaseService.createUserProfile(
            userCredential.user!,
            nameController.text.trim(),
          );
        }
      }
    } on FirebaseAuthException catch (e) {
      String errorMessage = 'Ocorreu um erro desconhecido.';
      if (e.code == 'weak-password') {
        errorMessage = 'A senha fornecida é muito fraca.';
      } else if (e.code == 'email-already-in-use') {
        errorMessage = 'Este e-mail já está em uso.';
      } else if (e.code == 'invalid-email') {
        errorMessage = 'O endereço de e-mail não é válido.';
      } else if (e.code == 'invalid-credential') {
        errorMessage = 'Credenciais inválidas. Verifique seu e-mail e senha.';
      }
      if (context.mounted) {
        _showFeedbackDialog(context, 'Erro de Autenticação', errorMessage);
      }
    } finally {
      _setLoading(false);
    }
  }

  Future<void> resetPassword(BuildContext context) async {
    final email = emailController.text.trim();
    if (email.isEmpty) {
      _showFeedbackDialog(
        context,
        'Atenção',
        'Por favor, digite seu e-mail no campo correspondente para redefinir a senha.',
      );
      return;
    }

    _setLoading(true);
    try {
      await _authService.sendPasswordResetEmail(email: email);
      if (!context.mounted) return;
      _showFeedbackDialog(
        context,
        'Sucesso',
        'E-mail de redefinição de senha enviado! Verifique sua caixa de entrada.',
      );
    } on FirebaseAuthException catch (_) {
      if (!context.mounted) return;
      _showFeedbackDialog(
        context,
        'Ocorreu um Erro',
        'Não foi possível enviar o e-mail. Verifique se o endereço está correto e tente novamente.',
      );
    } finally {
      _setLoading(false);
    }
  }

  void _showFeedbackDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppColors.azulRoyal,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        content: Text(
          content,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        actions: <Widget>[
          TextButton(
            child:
            const Text('Ok', style: TextStyle(color: AppColors.azulClaro)),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void _clearControllers() {
    formKey.currentState?.reset();
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}