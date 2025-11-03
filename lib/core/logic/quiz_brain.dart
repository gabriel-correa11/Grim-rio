import 'package:grimorio/core/data/static_content.dart';
import 'package:grimorio/core/models/book.dart';
import 'package:grimorio/core/models/question.dart';

class QuizBrain {
  List<Book> getBooks() {
    return StaticContent.booksData;
  }

  List<Question> getQuestionsForChapter(String chapterId) {
    return StaticContent.quizzesData[chapterId] ?? [];
  }
}