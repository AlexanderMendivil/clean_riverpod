import 'package:animate_do/animate_do.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:flutter/material.dart';

class MoviesSlideshow extends StatelessWidget {
  final List<Movie> movies;
  const MoviesSlideshow({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      child: Swiper(
          viewportFraction: 0.8,
          scale: 0.9,
          autoplay: true,
          itemCount: movies.length,
          pagination: SwiperPagination(
            margin: const EdgeInsets.only(top: 0),
            builder: DotSwiperPaginationBuilder(
                activeSize: 20, space: 5, activeColor: colors.primary, color: colors.secondary),
          ),
          itemBuilder: (context, index) => _Slide(movie: movies[index])),
    );
  }
}

class _Slide extends StatelessWidget {
  final Movie movie;
  const _Slide({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.black45, blurRadius: 10, offset: Offset(0, 10))
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(movie.backdropPath!, fit: BoxFit.cover, loadingBuilder: (context, child, loading){
            print("loading: $loading");
            if (loading == null) {
              return FadeIn(child: child);
            }
            return const Center(child: CircularProgressIndicator());
          },),
        ),
      ),
    );
  }
}
