import 'package:animate_do/animate_do.dart';
import 'package:clean_riverpod/config/helpers/human_formats.dart';
import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:flutter/material.dart';

class MovieHorizontalListview extends StatefulWidget {
  final List<Movie> movies;
  final String? title;
  final String? subTitle;
  final VoidCallback? nextPage;
  const MovieHorizontalListview(
      {super.key,
      required this.movies,
      this.title,
      this.subTitle,
      this.nextPage});

  @override
  State<MovieHorizontalListview> createState() => _MovieHorizontalListviewState();
}

class _MovieHorizontalListviewState extends State<MovieHorizontalListview> {

  final ScrollController _scrollController = ScrollController();

  @override
  void initState(){
    super.initState();

  _scrollController.addListener((){
    if(widget.nextPage == null){
      return;
    }

    if((_scrollController.position.pixels + 200) >= _scrollController.position.maxScrollExtent ){
      widget.nextPage!();
    }
    
  });

  }
  
  @override
  void dispose(){
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Column(
        children: [
          if (widget.title != null || widget.subTitle != null)
            _Title(
              label: widget.subTitle!,
              title: widget.title!,
            ),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: widget.movies.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => _Slide(movie: widget.movies[index]),
            ),
          )
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final Movie movie;
  const _Slide({required this.movie});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;  
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                movie.posterPath,
                fit: BoxFit.cover,
                width: 150,
                loadingBuilder: (_, child, loading) {
                  if (loading == null) {
                    return FadeIn(child: child);
                  }
                  return const Center(
                      child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ));
                },
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 150,
            child: Text(
              movie.title,
              maxLines: 2,
              style: textTheme.titleSmall,
            ),
            
          ),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              const SizedBox(width: 5,),
              Text(
                 movie.voteAverage.toString(),
                style: textTheme.bodyMedium!.copyWith(color: Colors.yellow[800]),
              ),
              const SizedBox(width: 5,),
              Text(
                HumanFormats.number(formattedNumber:  movie.popularity),
                style: textTheme.bodySmall),
              ]
              )
            ],
          )  ,      
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
          if (title != null)
            Text(title!,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const Spacer(),
          if (label != null)
            FilledButton.tonal(
              style: const ButtonStyle(visualDensity: VisualDensity.compact),
              onPressed: () {},
              child: Text(label!,
                  style: const TextStyle(fontSize: 16, color: Colors.black45)),
            )
        ],
      ),
    );
  }
}
