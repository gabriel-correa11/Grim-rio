import 'package:flutter/material.dart';
import 'package:grimorio/core/models/achievement.dart';
import 'package:grimorio/core/models/user_profile.dart';

class AchievementLogic {
  static const List<Achievement> allAchievements = [
    Achievement(
      id: 'first_quiz',
      name: 'Primeiro Capítulo Decifrado',
      description: 'Complete seu primeiro quiz.',
      iconCodePoint: '0xe3a8',
    ),
    Achievement(
      id: 'level_2',
      name: 'Escrivão Iniciante',
      description: 'Alcance o Nível 2.',
      iconCodePoint: '0xe1c0',
    ),
    Achievement(
      id: 'perfect_quiz',
      name: 'Mente Afiada',
      description: 'Complete um quiz com 100% de acerto.',
      iconCodePoint: '0xf05a1',
    ),
    Achievement(
      id: 'level_5',
      name: 'Mago',
      description: 'Alcance o Nível 5.',
      iconCodePoint: '0xece5',
    ),
    Achievement(
      id: 'first_book',
      name: 'Leitor Voraz',
      description: 'Complete todos os capítulos de um livro.',
      iconCodePoint: '0xea51',
    ),
    Achievement(
      id: 'level_10',
      name: 'Supremo',
      description: 'Alcance o Nível 10, o pináculo do conhecimento.',
      iconCodePoint: '0xf06b6',
    ),
  ];

  static List<String> checkAchievements(
      UserProfile userProfile,
      int currentScore,
      int totalQuestions,
      List<String> currentlyUnlockedIds) {
    List<String> newlyUnlockedIds = [];

    if (!currentlyUnlockedIds.contains('first_quiz') &&
        userProfile.completedBooksCount >= 1) {
      newlyUnlockedIds.add('first_quiz');
    }

    if (!currentlyUnlockedIds.contains('level_2') && userProfile.level >= 2) {
      newlyUnlockedIds.add('level_2');
    }

    if (!currentlyUnlockedIds.contains('perfect_quiz') &&
        currentScore == totalQuestions) {
      newlyUnlockedIds.add('perfect_quiz');
    }

    if (!currentlyUnlockedIds.contains('level_5') && userProfile.level >= 5) {
      newlyUnlockedIds.add('level_5');
    }

    if (!currentlyUnlockedIds.contains('level_10') && userProfile.level >= 10) {
      newlyUnlockedIds.add('level_10');
    }

    return newlyUnlockedIds;
  }

  static Achievement? getAchievementById(String id) {
    try {
      return allAchievements.firstWhere((ach) => ach.id == id);
    } catch (e) {
      return null;
    }
  }
}