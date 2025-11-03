import 'package:grimorio/core/models/book.dart';
import 'package:grimorio/core/models/chapter.dart';
import 'package:grimorio/core/models/question.dart';

class StaticContent {
  static final List<Book> booksData = [
    Book(
      id: '1',
      title: 'O Pequeno Príncipe',
      author: 'Antoine de Saint-Exupéry',
      imagePath: 'assets/images/pequeno_principe.jpg',
      difficulty: 1,
      baseXp: 10,
      chapters: [
        Chapter(id: 'pp_cap1', title: 'Nível 1'),
        Chapter(id: 'pp_cap2', title: 'Nível 2'),
        Chapter(id: 'pp_cap3', title: 'Nível 3'),
      ],
    ),
    Book(
      id: '6',
      title: 'A Lista de Brett',
      author: 'Lori Nelson Spielman',
      imagePath: 'assets/images/a_lista_de_brett.jpg',
      difficulty: 2,
      baseXp: 10,
      chapters: [
        Chapter(id: 'brett_cap1', title: 'Nível 1'),
        Chapter(id: 'brett_cap2', title: 'Nível 2'),
        Chapter(id: 'brett_cap3', title: 'Nível 3'),
      ],
    ),
    Book(
      id: '3',
      title: 'O Jardim Secreto',
      author: 'Frances Hodgson Burnett',
      imagePath: 'assets/images/jardim_secreto.jpg',
      difficulty: 3,
      baseXp: 15,
      chapters: [
        Chapter(id: 'jardim_cap1', title: 'Nível 1'),
        Chapter(id: 'jardim_cap2', title: 'Nível 2'),
        Chapter(id: 'jardim_cap3', title: 'Nível 3'),
      ],
    ),
    Book(
      id: '5',
      title: 'Coraline',
      author: 'Neil Gaiman',
      imagePath: 'assets/images/coraline.jpg',
      difficulty: 4,
      baseXp: 15,
      chapters: [
        Chapter(id: 'coraline_cap1', title: 'Nível 1'),
        Chapter(id: 'coraline_cap2', title: 'Nível 2'),
        Chapter(id: 'coraline_cap3', title: 'Nível 3'),
      ],
    ),
    Book(
      id: '2',
      title: 'A Menina que Roubava Livros',
      author: 'Markus Zusak',
      imagePath: 'assets/images/a_menina_que_roubavalivros.jpg',
      difficulty: 5,
      baseXp: 20,
      chapters: [
        Chapter(id: 'menina_cap1', title: 'Nível 1'),
        Chapter(id: 'menina_cap2', title: 'Nível 2'),
        Chapter(id: 'menina_cap3', title: 'Nível 3'),
      ],
    ),
    Book(
      id: '4',
      title: 'O Sol é Para Todos',
      author: 'Harper Lee',
      imagePath: 'assets/images/sol_para_todos.jpg',
      difficulty: 6,
      baseXp: 20,
      chapters: [
        Chapter(id: 'sol_cap1', title: 'Nível 1'),
        Chapter(id: 'sol_cap2', title: 'Nível 2'),
        Chapter(id: 'sol_cap3', title: 'Nível 3'),
      ],
    ),
    Book(
      id: '8',
      title: 'O Velho e o Mar',
      author: 'Ernest Hemingway',
      imagePath: 'assets/images/.o.velho.e.o.mar.jpg',
      difficulty: 7,
      baseXp: 25,
      chapters: [
        Chapter(id: 'velho_cap1', title: 'Nível 1'),
        Chapter(id: 'velho_cap2', title: 'Nível  2'),
        Chapter(id: 'velho_cap3', title: 'Nível 3'),
      ],
    ),
    Book(
      id: '7',
      title: 'O Morro dos Ventos Uivantes',
      author: 'Emily Brontë',
      imagePath: 'assets/images/morro_dos_ventos.jpg',
      difficulty: 8,
      baseXp: 25,
      chapters: [
        Chapter(id: 'morro_cap1', title:'Nível 1'),
        Chapter(id: 'morro_cap2', title: 'Nível 2'),
        Chapter(id: 'morro_cap3', title: 'Nível 3'),
      ],
    ),
  ];

  static final Map<String, List<Question>> quizzesData = {
    'pp_cap1': [
      Question(
        text: 'Qual é a profissão do narrador da história?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Piloto / aviador'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Geógrafo'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Escritor'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Pintor'),
        ],
      ),
      Question(
        text: 'De onde o Pequeno Príncipe vem?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Terra'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Do asteroide B-612'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Marte'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Júpiter'),
        ],
      ),
      Question(
        text: 'O que o Pequeno Príncipe pede para o narrador desenhar?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Uma rosa'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Uma raposa'),
          QuestionOptions(id: 'c', isCorrect: true, text: 'Um carneiro'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Um elefante'),
        ],
      ),
      Question(
        text: 'Qual é a flor mais importante para o Pequeno Príncipe?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Um lírio'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Uma tulipa'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Um cravo'),
          QuestionOptions(id: 'd', isCorrect: true, text: 'Uma rosa'),
        ],
      ),
      Question(
        text: 'O que o encontro com a raposa ensina ao Pequeno Príncipe?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Que se deve "cativar"'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Como caçar'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Como voltar ao seu planeta'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Onde encontrar água'),
        ],
      ),
      Question(
        text: 'Qual é a principal mensagem filosófica deixada pelo livro?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Só se vê bem com a razão'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'A pressa é inimiga da perfeição'),
          QuestionOptions(id: 'c', isCorrect: true, text: 'O essencial é invisível aos olhos'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Aparências enganam'),
        ],
      ),
    ],
    'pp_cap2': [
      Question(
        text: 'Por que o narrador teve que pousar no deserto do Saara?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Falta de combustível'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Uma pane no avião'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Uma tempestade de areia'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ele estava de férias'),
        ],
      ),
      Question(
        text: 'Quantos planetas o Pequeno Príncipe visita antes de chegar à Terra?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Cinco'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Seis'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Sete'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Oito'),
        ],
      ),
      Question(
        text: 'O que representam as baobás na história?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Árvores sagradas'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Perigos/problemas negligenciados'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Fonte de alimento'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Sorte'),
        ],
      ),
      Question(
        text: 'Como o Pequeno Príncipe descreve a vaidade do Homem do Planeta do Homem Vaidoso?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Como alguém sábio'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Vive apenas da admiração alheia'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Como alguém muito rico'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Como um líder'),
        ],
      ),
      Question(
        text: 'O que significa “cativar” na relação entre a raposa e o Pequeno Príncipe?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Criar laços que tornam alguém único'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Aprisionar'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Alimentar'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Enganar'),
        ],
      ),
      Question(
        text: 'Por que o Pequeno Príncipe chora quando lembra da sua flor?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Porque ela o picou'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Por amor, saudade e culpa'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Porque ela morreu'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Porque ela era feia'),
        ],
      ),
    ],
    'pp_cap3': [
      Question(
        text: 'Como a relação entre lembrança e responsabilidade é explorada no livro?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Ter alguém "cativado" traz obrigações afetivas'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Lembrar é sofrer'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Responsabilidade é esquecer o passado'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Não há relação entre elas'),
        ],
      ),
      Question(
        text: 'Quais críticas o livro faz à mentalidade adulta? Cite dois exemplos.',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Adultos são muito imaginativos'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Obsessão por números e falta de imaginação'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Adultos são muito ativos e saudáveis'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Eles se preocupam demais com a natureza'),
        ],
      ),
      Question(
        text: 'De que forma o final abre espaço para múltiplas interpretações sobre morte e retorno?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'O final é claro que ele morreu'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'A partida pode ser morte física ou retorno espiritual/metafórico'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'O narrador confirma que ele voltou'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'O final prova que ele era uma alucinação'),
        ],
      ),
      Question(
        text: 'Como a simplicidade da linguagem reforça o tom filosófico da obra?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Torna o livro infantil demais'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Torna as ideias profundas acessíveis e universais'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'A linguagem é complexa, não simples'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Não reforça, apenas simplifica'),
        ],
      ),
      Question(
        text: 'Analise o simbolismo do desenho do carneiro na caixa.',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Simboliza a imaginação e a preferência por ver o essencial'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Simboliza a preguiça do narrador'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Simboliza um carneiro doente'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Simboliza um presente caro'),
        ],
      ),
      Question(
        text: 'Qual a importância do encontro com o mercador dos comprimidos da sede?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Mostra como economizar dinheiro'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Critica soluções superficiais e a pressa moderna'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Resolve o problema de sede do narrador'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ensina sobre negócios'),
        ],
      ),
    ],
    'menina_cap1': [
      Question(
        text: 'Quem é o narrador da história?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'A Morte'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Liesel Meminger'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Hans Hubermann'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Rudy Steiner'),
        ],
      ),
      Question(
        text: 'Como se chama a protagonista do livro?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Rosa Hubermann'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Liesel Meminger'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Ilsa Hermann'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Anna Schmidt'),
        ],
      ),
      Question(
        text: 'Em que período histórico se passa a história?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Primeira Guerra Mundial'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Guerra Fria'),
          QuestionOptions(id: 'c', isCorrect: true, text: 'Alemanha Nazista (Segunda Guerra Mundial)'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Revolução Francesa'),
        ],
      ),
      Question(
        text: 'Quem ensina Liesel a ler e escrever?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Sua mãe adotiva, Rosa'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Seu pai adotivo, Hans Hubermann'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Seu amigo Rudy'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Max Vandenburg'),
        ],
      ),
      Question(
        text: 'Qual é o significado simbólico dos livros para Liesel?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Apenas entretenimento'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Riqueza material'),
          QuestionOptions(id: 'c', isCorrect: true, text: 'Escape, consolo, identidade e resistência'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Obrigações escolares'),
        ],
      ),
      Question(
        text: 'O que o final revela sobre o poder das palavras?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Que elas podem salvar, ferir e recriar o mundo'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Que palavras são inúteis'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Que apenas ações importam'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Que livros são perigosos'),
        ],
      ),
    ],
    'menina_cap2': [
      Question(
        text: 'Por que Liesel é enviada para a família adotiva, os Hubermann?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Seus pais biológicos não puderam cuidar dela'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Para estudar em uma escola melhor'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Para trabalhar para eles'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Para fugir da guerra'),
        ],
      ),
      Question(
        text: 'Quem é Rudy Steiner e qual é sua relação com Liesel?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Seu irmão adotivo'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Amigo, companheiro e interesse amoroso'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Seu professor'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Um soldado'),
        ],
      ),
      Question(
        text: 'Como Max Vandenburg chega à casa dos Hubermann?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'É um judeu que eles escondem no porão'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'É um parente distante de Rosa'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'É um soldado'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Liesel o encontra na rua'),
        ],
      ),
      Question(
        text: 'Quais são as consequências das opiniões sobre o regime para os personagens?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Eles são promovidos'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Perseguição, ostracismo e violência'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Não há consequências'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Eles ganham medalhas'),
        ],
      ),
      Question(
        text: 'Que papel tem a pintura e o desenho (de Max) dentro da narrativa?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Expressão de esperança e comunicação'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Apenas um hobby'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Para vender e ganhar dinheiro'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Para decorar a casa'),
        ],
      ),
      Question(
        text: 'Como a figura da morte atua na construção do tom do romance?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Torna a história assustadora'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Dá um tom reflexivo e compassivo'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'É irrelevante para a história'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Torna a história cômica'),
        ],
      ),
    ],
    'menina_cap3': [
      Question(
        text: 'Analise como a autora usa metáforas para tratar da violência da guerra. Dê um exemplo.',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'A Morte usa cores (céu vermelho) para descrever bombardeios'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'O livro não usa metáforas'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Compara a guerra a um jogo'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Usa apenas descrições literais'),
        ],
      ),
      Question(
        text: 'De que forma os livros “roubados” transformam a identidade de Liesel?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Eles dão a ela voz, autoestima e ativam sua resistência'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Eles a tornam uma criminosa'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Eles não mudam nada'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Eles a tornam rica'),
        ],
      ),
      Question(
        text: 'Discuta o papel da culpa e do perdão entre os personagens principais.',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Nenhum personagem sente culpa'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Hans sente culpa por sobreviver, Max por deixar a família'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Liesel se culpa pela guerra'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Apenas Rosa sente culpa'),
        ],
      ),
      Question(
        text: 'Como o romance aborda memória coletiva e memória individual?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Mostra como histórias pessoais (Liesel) resistem ao apagamento (Nazismo)'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Diz que a memória coletiva é a única que importa'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Não aborda o tema da memória'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Foca apenas na memória de Hitler'),
        ],
      ),
      Question(
        text: 'Explique a ambivalência moral de alguns personagens.',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Todos são puramente bons ou maus'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Mostra pessoas boas que se submetem ao regime por medo'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Os personagens são moralmente perfeitos'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Apenas os nazistas são ambivalentes'),
        ],
      ),
      Question(
        text: 'Em que medida o narrador (a Morte) influencia a empatia do leitor?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Causa medo e distanciamento'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Intensifica o tom trágico e humaniza os eventos'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Torna a história confusa'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Não tem influência'),
        ],
      ),
    ],
    'jardim_cap1': [
      Question(
        text: 'Qual é o nome da protagonista da história?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Mary Lennox'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Martha Sowerby'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Lilias Craven'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Susan Sowerby'),
        ],
      ),
      Question(
        text: 'Onde a história se passa após Mary sair da Índia?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Londres'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Em uma mansão em Yorkshire, Inglaterra'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Paris, França'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Escócia'),
        ],
      ),
      Question(
        text: 'O que Mary descobre na mansão que muda sua vida?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Uma sala de tesouros'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Um fantasma'),
          QuestionOptions(id: 'c', isCorrect: true, text: 'Um jardim secreto trancado'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Uma passagem secreta para a vila'),
        ],
      ),
      Question(
        text: 'Qual é o nome do primo de Mary, que também se transforma com o jardim?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Dickon Sowerby'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Colin Craven'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Archibald Craven'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ben Weatherstaff'),
        ],
      ),
      Question(
        text: 'O que o jardim simboliza na história?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Renascimento, cura e crescimento pessoal'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Riqueza e status'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Solidão e abandono'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'O passado sombrio da família'),
        ],
      ),
      Question(
        text: 'Como a amizade e o cuidado com a natureza influenciam o desenvolvimento dos personagens?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Eles ficam mais ricos'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Eles deixam de ser egoístas e doentios, tornando-se saudáveis'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Eles se tornam jardineiros famosos'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Eles decidem voltar para a Índia'),
        ],
      ),
    ],
    'jardim_cap2': [
      Question(
        text: 'Por que Mary é inicialmente descrita como uma criança desagradável e isolada?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Por negligência emocional dos pais'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Porque ela era naturalmente má'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Porque ela preferia ficar sozinha'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Porque ela estava doente'),
        ],
      ),
      Question(
        text: 'Quem é Dickon e qual é sua importância para o jardim?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'O jardineiro chefe'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Um rapaz ligado à natureza que ajuda a restaurar o jardim'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'O irmão de Mary'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Um animal falante'),
        ],
      ),
      Question(
        text: 'Como a figura da governanta e dos empregados contribui para o clima da casa?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Eles são alegres e receptivos'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Refletem a atmosfera sombria e cheia de segredos'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Eles são indiferentes'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Eles tentam expulsar Mary'),
        ],
      ),
      Question(
        text: 'O que acontece com Colin no decorrer da história?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Ele melhora física e psicologicamente'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Ele piora e morre'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Ele foge da mansão'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ele expulsa Mary'),
        ],
      ),
      Question(
        text: 'Quais temas de recuperação e cura física e emocional aparecem na obra?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Apenas cura física'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Cura pela natureza e amizade'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Apenas cura emocional'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Cura através de remédios'),
        ],
      ),
      Question(
        text: 'Como a descoberta do passado da família altera a percepção de Mary?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Muda sua visão sobre família e pertencimento'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Faz ela querer voltar para a Índia'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Não altera em nada'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Faz ela sentir mais raiva'),
        ],
      ),
    ],
    'jardim_cap3': [
      Question(
        text: 'Analise o simbolismo do segredo e do oculto na estrutura narrativa.',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'O segredo precisa ser revelado para curar'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Segredos devem ser mantidos'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'O oculto é sempre perigoso'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'O livro não tem simbolismo'),
        ],
      ),
      Question(
        text: 'De que forma a novela trata da relação entre natureza e educação moral?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Cuidar do jardim educa para responsabilidade e empatia'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'A natureza é selvagem e perigosa'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'A educação moral vem apenas dos livros'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Não há relação'),
        ],
      ),
      Question(
        text: 'Discuta a importância do espaço (a mansão e o pátio) como personagem simbólico.',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Eles influenciam as emoções e ações dos personagens'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'São apenas cenários de fundo'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'A mansão é boa, o pátio é ruim'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Apenas a Índia é simbólica'),
        ],
      ),
      Question(
        text: 'Como a obra reflete valores vitorianos sobre infância e saúde?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Importância do ar livre e ambiente para o bem-estar'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Crianças devem ficar dentro de casa'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Saúde depende apenas de médicos'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Infância não é importante'),
        ],
      ),
      Question(
        text: 'Compare a transformação de Mary com a transformação de Colin.',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Apenas Mary se transforma'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'São transformações psicológicas paralelas (egoísmo para empatia)'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Apenas Colin se transforma'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Eles se tornam mais egoístas'),
        ],
      ),
      Question(
        text: 'Em que medida o final oferece uma visão idealizada ou realista de cura?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'É totalmente realista'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Tende a uma visão esperançosa/idealizada de cura'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'É pessimista'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Não há cura no final'),
        ],
      ),
    ],
    'sol_cap1': [
      Question(
        text: 'Quem é a narradora da história?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Jem Finch'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Atticus Finch'),
          QuestionOptions(id: 'c', isCorrect: true, text: 'Scout Finch (Jean Louise Finch)'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Calpurnia'),
        ],
      ),
      Question(
        text: 'Em que cidade fictícia a história se passa?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Maycomb, Alabama'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Macon, Geórgia'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Meridian, Mississippi'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Mobile, Alabama'),
        ],
      ),
      Question(
        text: 'Qual é a profissão do pai de Scout, Atticus Finch?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Médico'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Advogado'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Fazendeiro'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Juiz'),
        ],
      ),
      Question(
        text: 'Que caso judicial é o centro da narrativa?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Um caso de roubo'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Uma disputa de terras'),
          QuestionOptions(id: 'c', isCorrect: true, text: 'O julgamento de Tom Robinson'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Um caso de assassinato'),
        ],
      ),
      Question(
        text: 'Qual é a principal lição moral que Atticus tenta ensinar a seus filhos?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Praticar empatia'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'A importância de ser rico'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Que se deve sempre vencer'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Nunca confiar em estranhos'),
        ],
      ),
      Question(
        text: 'O que o livro revela sobre preconceito e empatia através do olhar infantil de Scout?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Que crianças são naturalmente preconceituosas'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Revela racismo e como a inocência percebe injustiças'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Que o preconceito é justificado'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Que a empatia é uma fraqueza'),
        ],
      ),
    ],
    'sol_cap2': [
      Question(
        text: 'Quem é Tom Robinson e por que seu julgamento é emblemático?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Um negro acusado injustamente, mostrando o racismo institucional'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Um homem branco rico'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'O juiz do caso'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Um amigo de Atticus'),
        ],
      ),
      Question(
        text: 'Qual é a relação entre Boo Radley e as crianças?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Ele é o professor deles'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Um vizinho recluso que se revela protetor'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Ele é um criminoso'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Não há relação'),
        ],
      ),
      Question(
        text: 'Como a comunidade reage ao papel de Atticus como advogado de defesa?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Eles o apoiam'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Com desaprovação e isolamento social'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Com indiferença'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Eles o premiam'),
        ],
      ),
      Question(
        text: 'De que forma Calpurnia contribui para a educação de Scout e Jem?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Atua como cuidadora e ponte cultural'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Ela é a professora da escola'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Ela não contribui'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ensinando-os a cozinhar'),
        ],
      ),
      Question(
        text: 'Quais são as tensões raciais e de classe presentes na cidade?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'A cidade é perfeitamente harmônica'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Segregação, insultos e discriminação'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Apenas tensões de classe'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Apenas tensões raciais'),
        ],
      ),
      Question(
        text: 'Como o ponto de vista infantil influencia a crítica social do romance?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Não influencia'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Mescla humor e inocência, tornando a crítica mais pungente'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Torna a crítica confusa'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Suaviza a crítica'),
        ],
      ),
    ],
    'sol_cap3': [
      Question(
        text: 'Analise o papel de Atticus como figura ética num contexto social injusto.',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Representa integridade e defesa da justiça'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Ele é um oportunista'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Ele se conforma com a injustiça'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ele é uma figura fraca'),
        ],
      ),
      Question(
        text: 'Que técnicas narrativas Harper Lee usa para misturar humor e tragédia?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Usa apenas tragédia'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Intercala episódios leves da infância com cenas trágicas'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Usa apenas humor'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'A narrativa é puramente jornalística'),
        ],
      ),
      Question(
        text: 'Discuta o simbolismo do título (“O Sol é Para Todos”) em relação ao enredo.',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Sugere que a inocência e o bem devem ser universais'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'É uma referência ao clima quente'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Não tem simbolismo'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Refere-se a um pássaro específico'),
        ],
      ),
      Question(
        text: 'Como o romance aborda a relação entre lei, justiça e moralidade?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'A lei sempre garante a justiça'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Questiona se a lei garante justiça quando a moral social é injusta'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Moralidade é irrelevante para a lei'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Justiça é sempre alcançada'),
        ],
      ),
      Question(
        text: 'Em que medida o personagem de Boo Radley subverte as expectativas?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Ele é exatamente como as crianças imaginavam'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'O "perigo" imaginado revela-se um herói silencioso'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Ele é o verdadeiro vilão'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ele não existe'),
        ],
      ),
      Question(
        text: 'Compare as estratégias de empatia do livro com debates contemporâneos sobre racismo.',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'O livro está totalmente desatualizado'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'O livro ainda dialoga com debates sobre racismo institucional'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'O livro resolveu o racismo'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'O livro não fala sobre racismo'),
        ],
      ),
    ],
    'coraline_cap1': [
      Question(
        text: 'Quem é a protagonista da história?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Coraline Jones'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Caroline Smith'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Srta. Spink'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Srta. Forcible'),
        ],
      ),
      Question(
        text: 'O que Coraline encontra atrás da porta misteriosa?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Um porão empoeirado'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Um mundo paralelo ("Outro Mundo")'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Um jardim secreto'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'O apartamento do Sr. Bobinsky'),
        ],
      ),
      Question(
        text: 'Quem é a “Outra Mãe”?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'A irmã gêmea de sua mãe'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Uma vizinha'),
          QuestionOptions(id: 'c', isCorrect: true, text: 'Uma criatura mágica (Bela Dama)'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Um fantasma'),
        ],
      ),
      Question(
        text: 'Que objetos Coraline precisa encontrar para salvar seus pais?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Os olhos (almas) das crianças fantasmas'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Três chaves mágicas'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Os corações de seus pais'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Um novelo de lã encantado'),
        ],
      ),
      Question(
        text: 'O que a história representa sobre coragem e curiosidade?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Que a curiosidade é perigosa'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Coragem é agir apesar do medo'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Que crianças não devem ser curiosas'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Que coragem é não ter medo'),
        ],
      ),
      Question(
        text: 'Qual é o simbolismo dos botões nos olhos na narrativa?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Uma melhoria na visão'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Um presente da "Outra Mãe"'),
          QuestionOptions(id: 'c', isCorrect: true, text: 'Perda de identidade e controle'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Um sinal de amor eterno'),
        ],
      ),
    ],
    'coraline_cap2': [
      Question(
        text: 'Como o ambiente da casa e dos vizinhos contribui para a atmosfera do conto?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'O familiar se torna ameaçador'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Trazem conforto e segurança'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'São irrelevantes'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Tornam a história cômica'),
        ],
      ),
      Question(
        text: 'Quem são os outros moradores do outro mundo além da Outra Mãe?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Apenas a Outra Mãe'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Versões corrompidas de pessoas reais e vítimas'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Alienígenas'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Animais falantes'),
        ],
      ),
      Question(
        text: 'Por que o teste final de costurar os botões nos olhos é assustador simbolicamente?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Simboliza apagar a individualidade e conformidade'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Porque é fisicamente doloroso'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Porque botões são feios'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Não é assustador'),
        ],
      ),
      Question(
        text: 'Que papel têm as “almas” das crianças perdidas na história?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Elas ajudam a Outra Mãe'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Representam o que a Outra Mãe roubou'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'São apenas imaginação de Coraline'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Elas tentam aprisionar Coraline'),
        ],
      ),
      Question(
        text: 'Como Coraline utiliza astúcia e coragem para lidar com a Outra Mãe?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Usando força física'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Usando negociação inteligente e ludibriando-a'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Pedindo ajuda aos pais'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Fugindo e se escondendo'),
        ],
      ),
      Question(
        text: 'Em que medida o livro mistura elementos de conto de fadas e horror?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'É um conto de fadas puro'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Cria uma fábula moderna com terror'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'É uma história de horror pura'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'É uma comédia'),
        ],
      ),
    ],
    'coraline_cap3': [
      Question(
        text: 'Analise o tema da identidade e imitação presente na relação de Coraline com a Outra Mãe.',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'A Outra Mãe imita para substituir; Coraline reafirma sua identidade'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Não há tema de identidade'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Coraline quer ser a Outra Mãe'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'A Outra Mãe é a verdadeira mãe'),
        ],
      ),
      Question(
        text: 'De que maneira Neil Gaiman trata do medo infantil e do empoderamento?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Minimiza o medo infantil'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'O terror serve como catalisador para o empoderamento'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Mostra que o medo é paralisante'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Não trata do medo'),
        ],
      ),
      Question(
        text: 'Discuta o simbolismo espacial da porta e do corredor que leva ao Outro Mundo.',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'São limiares simbólicos entre o mundano e o fantástico'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'São apenas uma porta e um corredor'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Simbolizam uma prisão'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Representam a casa dos vizinhos'),
        ],
      ),
      Question(
        text: 'Como o final equilibra pesadelo e aprendizado?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'O final é um pesadelo'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Coraline perde a ilusão, mas ganha autonomia e maturidade'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Coraline não aprende nada'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'O final é puramente feliz'),
        ],
      ),
      Question(
        text: 'Compare as estratégias de sedução da Outra Mãe com mecanismos de manipulação.',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'A Outra Mãe não manipula'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Promete conforto e diversão em troca de submissão'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Usa apenas a força bruta'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Oferece dinheiro'),
        ],
      ),
      Question(
        text: 'Em que medida os elementos fantásticos funcionam como metáforas para inseguranças da infância?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Não funcionam como metáforas'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Refletem medos de abandono, identidade e limites'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'São apenas literais'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'São metáforas para a vida adulta'),
        ],
      ),
    ],
    'brett_cap1': [
      Question(
        text: 'Quem é a protagonista da história?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Elizabeth'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Brett Bohlinger'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Catherine'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Lori'),
        ],
      ),
      Question(
        text: 'O que ela descobre no testamento da mãe?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Uma lista de sonhos de vida da adolescência'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Que ela foi deserdada'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Um mapa do tesouro'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Que tinha um irmão perdido'),
        ],
      ),
      Question(
        text: 'Qual é o propósito da lista que Brett precisa cumprir?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Apenas para humilhá-la'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Receber sua herança e redescobrir a si mesma'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Para encontrar um marido'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Para doar dinheiro para caridade'),
        ],
      ),
      Question(
        text: 'Que transformação pessoal ela passa ao longo da jornada?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Deixa uma vida superficial para encontrar seu propósito'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Ela fica mais rica e arrogante'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Ela decide processar a mãe'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ela se muda para a Europa'),
        ],
      ),
      Question(
        text: 'Como cada item da lista representa uma parte do autoconhecimento dela?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Eles a fazem gastar dinheiro'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Eles a forçam a confrontar medos e desejos esquecidos'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Eles a tornam famosa'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Eles a ajudam a se vingar'),
        ],
      ),
      Question(
        text: 'O que o livro ensina sobre o verdadeiro sentido de sucesso e felicidade?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Que sucesso é ter um bom emprego'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Que felicidade é ter um parceiro perfeito'),
          QuestionOptions(id: 'c', isCorrect: true, text: 'Que eles estão alinhados com nossos valores e paixões'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Que dinheiro traz felicidade'),
        ],
      ),
    ],
    'brett_cap2': [
      Question(
        text: 'Por que a mãe de Brett cria a lista para ela?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Para empurrá-la a viver plenamente'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Porque ela a odiava'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Como uma piada'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Para que ela falhasse'),
        ],
      ),
      Question(
        text: 'Quais são alguns exemplos de tarefas da lista?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Comprar um carro novo'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Viagens, reconciliações, enfrentar medos'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Pular de paraquedas'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Escrever um livro'),
        ],
      ),
      Question(
        text: 'Como a relação de Brett com amigos e família muda?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Eles a abandonam'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'As relações são reavaliadas'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Não muda'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ela corta laços com todos'),
        ],
      ),
      Question(
        text: 'Que dilemas éticos ou emocionais Brett enfrenta ao decidir seguir a lista?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Seguir por obrigação vs. desejo autêntico'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Não há dilemas'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Se a lista é legal'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Se a mãe estava sã'),
        ],
      ),
      Question(
        text: 'Como viagens e experiências novas contribuem para seu crescimento pessoal?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Ampliam perspectivas e aceleram seu desenvolvimento'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'A deixam mais cansada'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Não contribuem em nada'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'A fazem querer voltar para casa'),
        ],
      ),
      Question(
        text: 'Em que momento Brett precisa confrontar medos ou arrependimentos do passado?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Ela não tem medos'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Ao longo de toda a lista, para tomar decisões'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Apenas no início'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Apenas no final'),
        ],
      ),
    ],
    'brett_cap3': [
      Question(
        text: 'Analise como a estrutura da lista funciona como dispositivo narrativo.',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Estrutura o arco de crescimento da protagonista'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Torna a história confusa'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'É apenas um detalhe'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Atrapalha a leitura'),
        ],
      ),
      Question(
        text: 'Discuta a diferença entre metas impostas e escolhas pessoais, usando Brett.',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Ela aprende a diferenciar o que ela quer do que esperam dela'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Não há diferença'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Ela segue apenas metas impostas'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ela ignora as metas'),
        ],
      ),
      Question(
        text: 'Em que medida o romance critica a cultura de “checklist” para a vida?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'O livro apoia essa cultura'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Critica sutilmente a validação externa'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Não critica'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'É um manual de autoajuda'),
        ],
      ),
      Question(
        text: 'Como a narrativa lida com perdas e expectativas versus realidade?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Mostra que nem tudo sai como planejado, e isso é parte do aprendizado'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Tudo dá certo para Brett'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'A realidade sempre corresponde às expectativas'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'A narrativa é pessimista'),
        ],
      ),
      Question(
        text: 'Compare a transformação de Brett com um modelo psicológico de mudança.',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Brett não muda'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Passa por reconhecimento, ação e manutenção de novas atitudes'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'A mudança é instantânea'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'A mudança é forçada'),
        ],
      ),
      Question(
        text: 'Que lições universais sobre identidade e propósito podem ser extraídas da história?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Identidade é fixa'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Identidade e propósito vêm de escolhas autênticas e corajosas'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Propósito é ganhar dinheiro'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Não há lições universais'),
        ],
      ),
    ],
    'morro_cap1': [
      Question(
        text: 'Onde se passa a história?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Londres'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'No Morro dos Ventos Uivantes e na Granja Thrushcross'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Paris'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Na Escócia'),
        ],
      ),
      Question(
        text: 'Quem são os protagonistas centrais da trama?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Heathcliff e Catherine Earnshaw'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Edgar e Isabella Linton'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Nelly Dean e Lockwood'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Hindley e Hareton'),
        ],
      ),
      Question(
        text: 'Qual é o tipo de relação entre Heathcliff e Catherine?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Fraterna e calma'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Indiferença mútua'),
          QuestionOptions(id: 'c', isCorrect: true, text: 'Amor obsessivo, espiritual e destrutivo'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Amizade platônica'),
        ],
      ),
      Question(
        text: 'Como o narrador conhece a história dos personagens?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Lendo o diário de Catherine'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Através da governanta, Nelly Dean'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Falando com o fantasma de Heathcliff'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ele presencia os eventos'),
        ],
      ),
      Question(
        text: 'De que forma o amor e o ódio se misturam na narrativa?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'O amor não correspondido de Heathcliff se torna vingança'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Catherine odeia Heathcliff secretamente'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Eles se amam e se odeiam ao mesmo tempo'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'O ódio é superado pelo amor'),
        ],
      ),
      Question(
        text: 'Que críticas sociais estão escondidas no comportamento dos personagens?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Críticas ao sistema de saúde'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Críticas à industrialização'),
          QuestionOptions(id: 'c', isCorrect: true, text: 'Críticas à rigidez das classes sociais e herança'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Críticas à religião'),
        ],
      ),
    ],
    'morro_cap2': [
      Question(
        text: 'Quem é Lockwood e qual é seu papel como narrador?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Inquilino que serve de narrador-observador'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'O dono do Morro'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'O vilão da história'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'O amante de Catherine'),
        ],
      ),
      Question(
        text: 'O que Nelly Dean acrescenta à compreensão dos eventos?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Ela é uma narradora imparcial'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'É a narradora interna que conhece os eventos e dá voz'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Ela mente sobre a história'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ela é a protagonista'),
        ],
      ),
      Question(
        text: 'Como as gerações seguintes (os filhos) repetem ou rompem padrões dos pais?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Eles rompem todos os padrões'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Repetem traços de rancor, mas há reconciliação'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'São piores que os pais'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Não há gerações seguintes'),
        ],
      ),
      Question(
        text: 'Que papel o cenário (os charnecos/moors) tem na atmosfera do romance?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'É um lugar bonito e calmo'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Reforça o isolamento e a selvageria dos personagens'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'É irrelevante'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Simboliza a paz'),
        ],
      ),
      Question(
        text: 'Como a posse e a vingança motivam as ações de Heathcliff?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'É a motivação central para punir ofensas sofridas'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Ele não busca vingança'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Ele busca apenas amor'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ele busca dinheiro'),
        ],
      ),
      Question(
        text: 'Em que medida o romance explora limites entre paixão e crueldade?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'A paixão é sempre positiva'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Mostra um limite tênue entre amor e destruição'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'A crueldade é sempre injustificada'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Não explora esses limites'),
        ],
      ),
    ],
    'morro_cap3': [
      Question(
        text: 'Analise a estrutura narrativa em camadas (narradores múltiplos).',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Cria camadas de interpretação e questiona a confiabilidade'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Torna a história mais fácil de ler'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'É uma estrutura linear simples'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Não há múltiplos narradores'),
        ],
      ),
      Question(
        text: 'Discuta as interpretações psicológicas do comportamento de Heathcliff.',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Trauma de abandono e impulso vingativo'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Ele é psicologicamente saudável'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Ele é apenas mau por natureza'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ele é motivado por dinheiro'),
        ],
      ),
      Question(
        text: 'Como Emily Brontë usa elementos góticos para reforçar temas sociais?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'O livro não tem elementos góticos'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Intensificam o clima e criticam normas sociais'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Apenas para assustar o leitor'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Para criar uma história de amor'),
        ],
      ),
      Question(
        text: 'Em que medida a obra critica a rigidez das normas de classe e herança?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'A obra defende as normas de classe'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Mostra como propriedade e linhagem conduzem conflitos'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Não critica as normas de classe'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'A classe social não é um tema'),
        ],
      ),
      Question(
        text: 'Compare o final da obra com suas expectativas iniciais — há redenção?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Sim, Heathcliff se arrepende de tudo'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'É ambíguo, com uma reconciliação simbólica'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Não, o final é puramente trágico'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'O final é feliz para todos'),
        ],
      ),
      Question(
        text: 'Debata se Heathcliff é um herói trágico ou um vilão repulsivo.',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Ambos os lados têm evidências no texto'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Ele é claramente um herói'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Ele é claramente um vilão'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ele é um personagem neutro'),
        ],
      ),
    ],
    'velho_cap1': [
      Question(
        text: 'Qual é o nome do velho pescador protagonista?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Manolin'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Santiago'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Martin'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Anselmo'),
        ],
      ),
      Question(
        text: 'Qual é o maior desafio que ele enfrenta?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Uma tempestade'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Piratas'),
          QuestionOptions(id: 'c', isCorrect: true, text: 'Capturar um marlim gigante'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'A solidão'),
        ],
      ),
      Question(
        text: 'O que o mar representa na vida do velho?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Sua vida, seu sustento e seu adversário'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Um lugar para relaxar'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Uma barreira'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Medo'),
        ],
      ),
      Question(
        text: 'Que relação existe entre o velho e o menino Manolin?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Pai e filho'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Inimigos'),
          QuestionOptions(id: 'c', isCorrect: true, text: 'Amizade e mentoria (mestre e aprendiz)'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Avô e neto'),
        ],
      ),
      Question(
        text: 'O que o peixe simboliza na luta do velho?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Apenas comida'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Um oponente nobre e a luta pela existência'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Má sorte'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Riqueza material'),
        ],
      ),
      Question(
        text: 'Como o livro aborda o tema da dignidade e resistência humana?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Mostrando que se deve desistir'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Focando na sorte'),
          QuestionOptions(id: 'c', isCorrect: true, text: 'Mostrando que um homem pode ser destruído, mas não derrotado'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Dizendo que a velhice é o fim'),
        ],
      ),
    ],
    'velho_cap2': [
      Question(
        text: 'Por que Santiago é considerado azarado pela comunidade?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Por longa ausência de peixes'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Porque ele é velho'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Porque ele afundou barcos'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Porque ele não tem família'),
        ],
      ),
      Question(
        text: 'Descreva a batalha entre Santiago e o marlim.',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Resistência física/psicológica e admiração mútua'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Uma batalha rápida e fácil'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Ele usa uma rede'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'O peixe se rende'),
        ],
      ),
      Question(
        text: 'Como Hemingway utiliza economia de estilo para intensificar a narrativa?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Usando muitas palavras difíceis'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Com subtexto (iceberg), sugerindo profundidade'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Com descrições longas'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Não usa economia de estilo'),
        ],
      ),
      Question(
        text: 'Qual é o papel das memórias de Santiago?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Sustentam sua identidade e oferecem consolo'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Elas o distraem e atrapalham'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'São irrelevantes'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'São memórias tristes'),
        ],
      ),
      Question(
        text: 'Como o relacionamento com Manolin acrescenta significado à história?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Manolin é quem pesca o peixe'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Representa companheirismo, continuidade e esperança'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'É um relacionamento de negócios'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Eles são rivais'),
        ],
      ),
      Question(
        text: 'Como o retorno de Santiago afeta o valor simbólico da vitória?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'É um fracasso total'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Preserva o triunfo moral, apesar da perda material'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'Mostra que ele teve sorte'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Prova que ele é um mau pescador'),
        ],
      ),
    ],
    'velho_cap3': [
      Question(
        text: 'Analise o tema da solidão e sua relação com a grandeza moral do protagonista.',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'A grandeza surge na conduta honrada diante do esforço solitário'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'A solidão o torna fraco'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'O livro não fala de solidão'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Ele não está sozinho, tem Manolin'),
        ],
      ),
      Question(
        text: 'Discuta a simbologia cristã e mítica presente no romance.',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Não há simbologia'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Temas de sacrifício, provação e redenção'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'É uma história budista'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'É uma crítica à religião'),
        ],
      ),
      Question(
        text: 'Em que sentido a luta de Santiago é uma alegoria sobre arte ou criação?',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'Não é uma alegoria'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Representa o esforço, sofrimento e busca por significado do criador'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'É uma alegoria sobre guerra'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'É uma alegoria sobre política'),
        ],
      ),
      Question(
        text: 'Como a prosa de Hemingway — seu “iceberg” — influencia a interpretação?',
        options: [
          QuestionOptions(id: 'a', isCorrect: true, text: 'Força o leitor a inferir significado e emoção'),
          QuestionOptions(id: 'b', isCorrect: false, text: 'Explica tudo em detalhes'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'É confusa e difícil de ler'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'Não influencia a interpretação'),
        ],
      ),
      Question(
        text: 'Analise o final em termos de triunfo moral versus fracasso prático.',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'É um fracasso prático e moral'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Triunfo moral (coragem) apesar de fracasso prático (peixe perdido)'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'É um triunfo prático e moral'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'O final é ambíguo'),
        ],
      ),
      Question(
        text: 'Compare a visão de dignidade humana do livro com textos existencialistas.',
        options: [
          QuestionOptions(id: 'a', isCorrect: false, text: 'É o oposto do existencialismo'),
          QuestionOptions(id: 'b', isCorrect: true, text: 'Valoriza o esforço autêntico e a resistência, como o existencialismo'),
          QuestionOptions(id: 'c', isCorrect: false, text: 'O livro não é filosófico'),
          QuestionOptions(id: 'd', isCorrect: false, text: 'É um texto niilista'),
        ],
      ),
    ]
  };
}