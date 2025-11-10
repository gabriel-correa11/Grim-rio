import 'package:flutter/material.dart';
import 'package:grimorio/core/logic/quiz_brain.dart';
import 'package:grimorio/core/models/user_profile.dart';
import 'package:grimorio/core/services/auth_service.dart';
import 'package:grimorio/core/services/database_service.dart';
import 'package:grimorio/presentation/screens/profile_page.dart';
import 'package:grimorio/presentation/screens/world_map_page.dart';
import 'package:grimorio/presentation/theme/app_colors.dart';
import 'package:grimorio/core/models/book.dart';

class BookSelectionPage extends StatefulWidget {
  const BookSelectionPage({super.key});

  @override
  State<BookSelectionPage> createState() => _BookSelectionPageState();
}

class _BookSelectionPageState extends State<BookSelectionPage> {
  final QuizBrain quizBrain = QuizBrain();
  final AuthService _authService = AuthService();
  final DatabaseService _databaseService = DatabaseService();

  late final List<Book> books;
  Future<UserProfile?>? _userProfileFuture;

  @override
  void initState() {
    super.initState();
    books = quizBrain.getBooks();
    books.sort((a, b) => a.difficulty.compareTo(b.difficulty));
    _loadUserProfile();
  }

  void _loadUserProfile() {
    final user = _authService.getCurrentUser();
    if (user != null) {
      setState(() {
        _userProfileFuture = _databaseService.getUserProfile(user);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolha um Livro'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
              _loadUserProfile();
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async => _loadUserProfile(),
        child: FutureBuilder<UserProfile?>(
            future: _userProfileFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError ||
                  !snapshot.hasData ||
                  snapshot.data == null) {
                return const Center(child: Text('Erro ao carregar perfil.'));
              }

              final userProfile = snapshot.data!;

              return ListView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: books.length,
                itemBuilder: (context, index) {
                  final book = books[index];
                  final bool isLocked = userProfile.level < book.difficulty;
                  final Color tileColor = isLocked
                      ? AppColors.azulEscuro.withAlpha(150)
                      : AppColors.azulRoyal;
                  final Color textColor =
                  isLocked ? Colors.grey.shade500 : Colors.white;

                  return Card(
                    color: tileColor,
                    elevation: isLocked ? 1 : 4,
                    margin: const EdgeInsets.only(bottom: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      onTap: isLocked
                          ? () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                'Alcance o Nível ${book.difficulty} para desbloquear este livro!'),
                            backgroundColor: Colors.red.shade400,
                          ),
                        );
                      }
                          : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                WorldMapPage(book: book),
                          ),
                        ).then((_) => _loadUserProfile());
                      },
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          book.imagePath,
                          width: 50,
                          height: 80,
                          fit: BoxFit.cover,
                          color: isLocked ? Colors.black.withAlpha(100) : null,
                          colorBlendMode: isLocked ? BlendMode.darken : null,
                        ),
                      ),
                      title: Text(
                        book.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: textColor,
                        ),
                      ),
                      subtitle: Text(
                        '${book.author} - Nível ${book.difficulty}',
                        style: TextStyle(
                          fontSize: 14,
                          color: textColor.withAlpha(200),
                        ),
                      ),
                      trailing: isLocked
                          ? Icon(Icons.lock, color: textColor, size: 20)
                          : Icon(Icons.arrow_forward_ios,
                          color: textColor, size: 16),
                    ),
                  );
                },
              );
            }),
      ),
    );
  }
}