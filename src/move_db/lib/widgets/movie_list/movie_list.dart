import 'package:flutter/material.dart';
import 'package:move_db/resources/resources.dart';

class Movie {
  final int id;
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie(
      {required this.id,
      required this.imageName,
      required this.title,
      required this.time,
      required this.description});
}

class MovieListWidget extends StatefulWidget {
  const MovieListWidget({super.key});

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final _movies = [
    Movie(
        id: 1,
        imageName: AppImages.ironManPoster,
        title: 'Железный человек 3',
        time: 'Апрель 7, 2024',
        description:
            'Когда мир Старка рушится на его глазах по вине неизвестных противников, Тони жаждет найти виновных и свести с ними счеты. Оказавшись в безвыходной ситуации, Старк может рассчитывать только на себя и свою изобретательность, чтобы защитить тех, кто ему дорог.'),
    Movie(
        id: 2,
        imageName: AppImages.transformersOneBritishMoviePoster,
        title: 'Трансформеры: Начало',
        time: 'Сентябрь 28, 2024',
        description:
            'Юные Оптимус Прайм и Мегатрон превращаются из братьев по оружию в заклятых врагов. '),
    Movie(
        id: 3,
        imageName: AppImages.spell,
        title: 'Заклятие',
        time: 'Январь 12, 2024',
        description:
            'Эд и Лоррейн Уоррены — детективы, которые расследуют паранормальные дела. Однажды к ним обращается семья, страдающая от злого духа. Уоррены, вынужденные сражаться с могущественной демонической сущностью, сталкиваются с самым пугающим случаем в своей жизни. '),
    Movie(
        id: 4,
        imageName: AppImages.drStrange,
        title: 'Доктор Стрэндж: В мультивселенной безумия',
        time: 'Апрель 11, 2024',
        description:
            'Доктор Стрэндж при помощи Вонга спасает от гигантского осьминога девушку-подростка по имени Америка Чавес, которая при сильном испуге может открывать порталы в параллельные вселенные. Пытаясь уберечь новую знакомую от злой силы, жаждущей заполучить её способность, Доктор вместе с Америкой пускается в путешествие по мультивселенной.'),
    // Movie(
    //     imageName: AppImages.gratefullCentury,
    //     title: 'Великолепный век',
    //     time: 'Июля 17, 2024',
    //     description:
    //         'Сюжет основан на реальных событиях, произошедших во времена правления султана Сулеймана I, и рассказывает о периоде жизни девушки Александры, взятой в плен'),
    Movie(
        id: 5,
        imageName: AppImages.harryPoter,
        title: 'Гарри Поттер и философский камень',
        time: 'Ноябрь 16, 2001',
        description:
            'Фильм "Гарри Поттер и философский камень" это начало удивительных похождений юного волшебника. Сюжет завязан на десятилетнем мальчишке Гарри Поттере, который в детстве потерял своих родителей, и вынужден был жить с дядей и тетей – не самыми добрыми людьми.'),
  ];

  var _filteredMovies = <Movie>[];

  final _serchController = TextEditingController();

  void _serchMovies() {
    final query = _serchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else if (query.isEmpty) {
      _filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredMovies = _movies;
    _serchController.addListener(_serchMovies);
  }

  void _onMovieTap(int index) {
    final id = _movies[index].id;
    Navigator.of(context)
        .pushNamed('/main_screen/movie_details', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            padding: const EdgeInsets.only(top: 58),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemExtent: 163,
            itemCount: _filteredMovies.length,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              final movie = _filteredMovies[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Stack(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.black.withOpacity(0.2)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 10))
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(movie.imageName),
                              width: 115,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    movie.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    movie.time,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    movie.description,
                                    //style: TextStyle(fontWeight: FontWeight.w400),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                        onLongPress: () {
                          showMenu(
                            color: Colors.white,
                            context: context,
                            position:
                                const RelativeRect.fromLTRB(100, 100, 0, 0),
                            items: [
                              const PopupMenuItem<String>(
                                value: 'edit',
                                child: Text('Редактировать'),
                              ),
                              const PopupMenuItem<String>(
                                value: 'delete',
                                child: Text('Удалить'),
                              ),
                              const PopupMenuItem<String>(
                                value: 'info',
                                child: Text('Информация'),
                              ),
                            ],
                          ).then((value) {
                            if (value != null) {
                              // Обработка выбранного элемента
                              print('Вы выбрали: $value');
                            }
                          });
                        },
                        onTap: () => _onMovieTap(index),
                      ),
                    )
                  ],
                ),
              );
            }),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _serchController,
            decoration: InputDecoration(
                labelStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white.withOpacity(0.9),
                border: const OutlineInputBorder(),
                label: const Text('Поиск'),
                contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                isCollapsed: true,
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue))),
          ),
        )
      ],
    );
  }
}
