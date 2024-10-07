import 'package:flutter/material.dart';
import 'package:move_db/elements/progres_bar_widget.dart';
import 'package:move_db/resources/resources.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _TopPostersWidget(),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 16, 20, 10),
          child: _MovieNameWidget(),
        ),
        _ScoreWidget(),
        _SummeryWidget(),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: _QuotationWidget(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: _OverviewWidget(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: _DecsriptionWidget(),
        ),
        SizedBox(
          height: 30,
        ),
        _PeopleWidget(),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class _QuotationWidget extends StatelessWidget {
  const _QuotationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: const Text(
        'Пока все не станут едины...',
        style: TextStyle(
            color: Color.fromRGBO(188, 182, 182, 1),
            fontSize: 18,
            fontStyle: FontStyle.italic),
      ),
    );
  }
}

class _DecsriptionWidget extends StatelessWidget {
  const _DecsriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Юные Оптимус Прайм и Мегатрон превращаются из братьев по оружию в заклятых врагов.',
      textAlign: TextAlign.justify,
      softWrap: true,
      style: TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
    );
  }
}

class _OverviewWidget extends StatelessWidget {
  const _OverviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: const Text(
        'Обзор',
        style: TextStyle(
            color: Colors.white, fontSize: 21, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class _TopPostersWidget extends StatelessWidget {
  const _TopPostersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          image: AssetImage(AppImages.topHeaderTransformersOne),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromRGBO(33, 54, 74, 1).withOpacity(1),
                  const Color.fromRGBO(33, 54, 74, 1).withOpacity(0.7),
                  const Color.fromRGBO(33, 54, 74, 1).withOpacity(0.1),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.center,
              ),
            ),
          ),
        ),
        const Positioned(
          top: 20,
          left: 20,
          bottom: 20,
          child: Image(
            image: AssetImage(AppImages.transformersOneBritishMoviePoster),
            height: 214,
          ),
        )
      ],
    );
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        maxLines: 3,
        text: const TextSpan(children: [
          TextSpan(
              text: 'Трансформеры: Начало ',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
              )),
          TextSpan(
              text: '(2024)',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Colors.grey,
              )),
        ]),
      ),
    );
  }
}

class _ScoreWidget extends StatelessWidget {
  const _ScoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              overlayColor: WidgetStateProperty.all(
                const Color.fromRGBO(255, 255, 255, 0.1),
              ),
            ),
            child: const Row(
              children: [
                SizedBox(
                  width: 55,
                  height: 55,
                  child: RardialPrecentWidget(
                      child: Text(
                        '75%',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      precent: 0.75,
                      backgroundColor: Color.fromRGBO(8, 28, 34, 1),
                      underLineColor: Color.fromRGBO(32, 69, 41, 1),
                      overLineColor: Color.fromRGBO(33, 208, 122, 1),
                      lineWidth: 3),
                ),
                Text(
                  '   Рейтинг',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 1,
            height: 25,
            color: Colors.grey,
          ),
          TextButton(
            style: ButtonStyle(
              overlayColor: WidgetStateProperty.all(
                const Color.fromRGBO(255, 255, 255, 0.1),
              ),
            ),
            onPressed: () {},
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
                Text(
                  'Воспроизвести трейлер',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SummeryWidget extends StatelessWidget {
  const _SummeryWidget({super.key});
  final textStyle = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: Colors.white,
    height: 1.2,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
            top: BorderSide(
              color: Colors.black,
              width: 0.8,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 0.8,
            )),
      ),
      child: ColoredBox(
        color: const Color.fromRGBO(29, 48, 66, 1.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'R 10/10/2024 (BY)   ',
                    style: textStyle,
                    softWrap: true,
                    overflow: TextOverflow
                        .ellipsis, // добавление многоточия для слишком длинного текста
                  ),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                      color: Colors.white, // Цвет круга
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    '   1ч 44м',
                    style: textStyle,
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      'мультфильм, фантастика, приключение, семейный',
                      style: textStyle,
                      softWrap: true,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _PeopleWidget extends StatelessWidget {
  const _PeopleWidget({super.key});

  final _mainTextStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16);
  final _secTextStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.normal, fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Andrew Barrer',
                    style: _mainTextStyle,
                  ),
                  Text(
                    'Screenplay, Story',
                    style: _secTextStyle,
                  ),
                ],
              ),
              const SizedBox(
                width: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gabriel Ferrari',
                    style: _mainTextStyle,
                  ),
                  Text(
                    'Screenplay, Story',
                    style: _secTextStyle,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Josh Cooley',
                    style: _mainTextStyle,
                  ),
                  Text(
                    'Director',
                    style: _secTextStyle,
                  ),
                ],
              ),
              const SizedBox(width: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Эрик Пирсон',
                    style: _mainTextStyle,
                  ),
                  Text(
                    'Screenplay',
                    style: _secTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
