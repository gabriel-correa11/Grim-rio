<div align="center"> <h1>Projeto Grimório</h1> <h3><a href="#">Português</a> • <a href="#english-version">English</a></h3> </div>

<div align="center">
 MVP Funcional 

</div>

Este é o repositório do projeto acadêmico Grimório, um aplicativo mobile desenvolvido em Flutter que utiliza gamificação para incentivar o hábito da leitura, transformando cada livro em uma jornada de progressão e conhecimento.

1. O Problema que Queremos Resolver
Em um mundo onde livros competem pela atenção com redes sociais e jogos que oferecem recompensas instantâneas, o Grimório busca usar essa mesma lógica a favor da leitura. O aplicativo foi projetado para dar ao usuário uma sensação tangível de progresso e conquista a cada capítulo lido e quiz finalizado.

2. Arquitetura e Decisões Técnicas
O projeto foi construído com foco em escalabilidade, manutenibilidade e performance, utilizando uma arquitetura limpa e tecnologias modernas.

Flutter & Dart: Escolha principal para o desenvolvimento multiplataforma (Android/iOS) a partir de um código único.

Firebase (Backend as a Service):

Firebase Authentication: Utilizado para um sistema de autenticação robusto e seguro (cadastro, login, verificação de e-mail, recuperação de senha).

Cloud Firestore: O coração da gamificação. Utilizado como um banco de dados NoSQL para salvar o perfil e o progresso de cada usuário (XP, nível, último desempenho, conquistas desbloqueadas, progresso por capítulo) de forma persistente.

Arquitetura em Camadas (Refatorada): O código foi reestruturado para seguir princípios de Arquitetura Limpa, separando as responsabilidades:

core: Camada que contém toda a lógica de negócio, modelos de dados (models), serviços (services), lógica de jogo (logic), controladores (providers) e dados estáticos (data).

presentation: Camada responsável por tudo que o usuário vê e interage (telas screens, widgets reutilizáveis widgets e tema visual theme).

Gerenciamento de Estado com Provider: O AuthController centraliza toda a lógica de formulários, validação e aceite de termos, mantendo a camada de presentation limpa e reativa.

3. Funcionalidades Implementadas
✅ Sistema de Autenticação Completo: Fluxo seguro de cadastro (com diálogo de Termos de Uso), login, recuperação de senha e verificação de e-mail.

✅ Seleção de Livros (Trilha de Dificuldade): A tela principal exibe os livros em ordem de dificuldade, bloqueando livros de nível superior até que o usuário alcance o nível necessário.

✅ Mapa de Mundos Visual (RF3): Cada livro abre um mapa visual (MVP) com nós de capítulos alternados, mostrando o status (Bloqueado/Disponível/Concluído) de cada um.

✅ Lógica de Desbloqueio (Gating): Implementada a lógica de desbloqueio de capítulos baseada no desempenho (acertar 3/6) e desbloqueio de livros baseada no nível do usuário.

✅ Quiz Interativo e Anti-Farm:

Quiz de múltipla escolha com 6 perguntas por capítulo.

Perguntas e respostas são embaralhadas a cada tentativa para impedir a memorização.

Feedback visual instantâneo (certo/errado) com avanço rápido (500ms).

✅ Gamificação e Progressão:

Sistema de Níveis e XP: O usuário ganha XP (baseado na dificuldade do livro) ao completar quizzes.

Regra RN2: XP ganho é reduzido pela metade em repetições de quizzes já concluídos.

Títulos Mágicos: Cada nível corresponde a um título (Aprendiz, Escrivão, Mago), reforçando a jornada.

Sistema de Conquistas (MVP): Lógica de desbloqueio para 6 conquistas (1º quiz, Níveis 2, 5, 10, Quiz perfeito, 1º Livro), com notificação via SnackBar.

✅ Tela "Meu Grimório" (Perfil Dinâmico):

Exibe o nome, "Selo do Guardião" (borda do avatar), nível e título mágico.

Mostra uma barra de progresso visual para o próximo nível com texto motivacional.

Exibe o desempenho do último quiz e as estatísticas do "Índice de Sabedoria" (Tomos Lidos).

Link para a tela AchievementsPage que lista todas as conquistas (bloqueadas e desbloqueadas).

✅ Correções de UX: Layouts de Autenticação e Perfil ajustados para evitar a necessidade de rolagem (scroll). Botões e textos padronizados.

4. Como Executar o Projeto
Clone o repositório: git clone https://github.com/gabriel-correa11/Grim-rio.git

Garanta que o Flutter está instalado (flutter doctor).

Configure seu próprio projeto no Firebase:

Habilite Authentication (com provedor Email/Senha).

Habilite Cloud Firestore e aplique as seguintes Regras:

JavaScript

rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /users/{userId} {
      allow read, write: if request.auth != null && request.auth.uid == userId;
    }
    match /users/{userId}/quizAttempts/{attemptId} {
      allow read, write: if request.auth != null && request.auth.uid == userId;
    }
  }
}
Instale o Firebase CLI (npm install -g firebase-tools) e o FlutterFire CLI (dart pub global activate flutterfire_cli).

Faça login (firebase login) e gere seu arquivo de configuração na raiz do projeto: flutterfire configure

Execute flutter pub get para baixar as dependências.

Execute flutter run para iniciar o aplicativo em um emulador ou dispositivo.

<hr>

<div id="english-version"></div>

English Version
<details> <summary>Click to expand</summary>

<div align="center"> <h1>Project Grimorio</h1> </div>

<div align="center">

 Functional MVP 

</div>

This is the repository for our college project, Grimorio. The goal is to create a mobile application in Flutter that uses gamification to encourage the reading habit by turning each book into a journey of progression and knowledge.

1. The Problem We Want to Solve
In a world where books compete for attention with social media and games that offer instant rewards, Grimorio aims to use the same logic in favor of reading. The app is designed to give the user a tangible sense of progress and achievement with each completed chapter and quiz.

2. Architecture and Technical Decisions
The project was built with a focus on scalability, maintainability, and performance, using a clean architecture and modern technologies.

Flutter & Dart: The primary choice for cross-platform development (Android/iOS) from a single codebase.

Firebase (Backend as a Service):

Firebase Authentication: Used for a robust and secure authentication system (sign-up, login, email verification, password recovery).

Cloud Firestore: The heart of our gamification. Used as a NoSQL database to persistently save each user's profile and progress (XP, level, last quiz performance, unlocked achievements, per-chapter progress) in real-time.

Layered Architecture (Refactored): The code was restructured to follow Clean Architecture principles, clearly separating responsibilities:

core: The layer containing all business logic, data models (models), services (services), game logic (logic), controllers (providers), and static data (data).

presentation: The layer responsible for everything the user sees and interacts with (screens, widgets, and visual theme).

State Management with Provider: The AuthController centralizes all form logic, validation, and terms acceptance, keeping the presentation layer clean and reactive.

3. Implemented Features
✅ Complete Authentication System: Secure flow for sign-up (with Terms of Use dialog), login, password recovery, and email verification.

✅ Book Selection (Difficulty Path): The main screen displays books in order of difficulty, locking higher-level books until the user reaches the required level.

✅ Visual World Map (RF3): Each book opens a visual map (MVP) with alternating chapter nodes, showing their status (Locked/Available/Completed) based on Firestore data.

✅ Gating Logic: Implemented chapter unlocking based on performance (e.g., 3/6 correct) and book unlocking based on user level.

✅ Interactive & Anti-Farm Quiz:

Multiple-choice quiz with 6 questions per chapter.

Questions and answers are shuffled on each attempt to prevent memorization.

Instant visual feedback (correct/incorrect) with a fast transition (500ms).

✅ Gamification and Progression:

Level & XP System: Users earn XP (based on book difficulty) for completing quizzes.

RN2 Rule: XP gain is halved for replaying already-completed quizzes.

Magical Titles: Each level corresponds to a title (Apprentice, Scribe, Mage).

Achievement System (MVP): Logic for unlocking 6 achievements (1st quiz, Levels 2, 5, 10, Perfect quiz, 1st Book), with SnackBar notifications.

✅ "My Grimoire" (Dynamic Profile):

Displays name, "Guardian Seal" (avatar border), level, and title.

Shows a visual progress bar with motivational text.

Displays last quiz performance and "Wisdom Index" stats (Tomes Read).

Links to the AchievementsPage listing all achievements (locked and unlocked).

✅ UX Fixes: Auth and Profile layouts adjusted to avoid scrolling. Standardized buttons and text styles.

4. How to Run the Project
Clone the repository: git clone https://github.com/gabriel-correa11/Grim-rio.git

Ensure Flutter is installed (flutter doctor).

Set up your own project in the Firebase Console:

Enable Authentication (with Email/Password provider).

Enable Cloud Firestore and apply the following Rules:

JavaScript

rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /users/{userId} {
      allow read, write: if request.auth != null && request.auth.uid == userId;
    }
    match /users/{userId}/quizAttempts/{attemptId} {
      allow read, write: if request.auth != null && request.auth.uid == userId;
    }
  }
}
Install the Firebase CLI (npm install -g firebase-tools) and the FlutterFire CLI (dart pub global activate flutterfire_cli).

Log in (firebase login) and generate your configuration file in the project's root: flutterfire configure

Run flutter pub get to download dependencies.

Run flutter run to start the application on an emulator or device.

</details>
