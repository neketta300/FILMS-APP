import 'package:flutter/material.dart';
import 'package:move_db/widgets/movie_details/movie_details_main_info_widget.dart';
import 'package:move_db/widgets/movie_details/movie_details_screen_casr_widget.dart';

class MovieDetailsWidget extends StatefulWidget {
  final int movieId;
  const MovieDetailsWidget({
    super.key,
    required this.movieId,
  });

  @override
  State<MovieDetailsWidget> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('N3FZ'),
        centerTitle: true,
      ),
      body: ColoredBox(
        color: const Color.fromRGBO(33, 54, 74, 1),
        child: ListView(
          children: const [
            MovieDetailsMainInfoWidget(),
            MovieDetailsScreenCasrWidget(),
          ],
        ),
      ),
    );
  }
}
