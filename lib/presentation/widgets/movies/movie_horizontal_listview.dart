import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:flutter/material.dart';

class MovieHorizontalListview extends StatelessWidget {
  final List<Movie> movies;
  final String? title;
  final String? subTitle;
  final VoidCallback? nextPage;
  const MovieHorizontalListview({super.key, required this.movies, this.title, this.subTitle, this.nextPage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Column(
        children: [

          if(title != null || subTitle != null)  
          _Title(label: subTitle!, title: title!,)
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String? title;
  final String? label;
  const _Title({this.title, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          if(title != null)
          Text(title!, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const Spacer(),
          if(label != null)
          FilledButton.tonal(
            style: const ButtonStyle(visualDensity: VisualDensity.compact),
            onPressed: (){}, child: Text(label!, style: const TextStyle(fontSize: 16, color: Colors.black45)),)
          
        ],
      ),
    );
  }
}