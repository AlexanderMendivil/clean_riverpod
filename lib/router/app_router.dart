import 'package:clean_riverpod/presentation/screens/screens.dart';
import 'package:clean_riverpod/presentation/views/views.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
  ShellRoute(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state){ 
          return const HomeView();
          },
          routes: [
            GoRoute(
          path: 'movie/:id',
          name: MovieScreen.name,
          builder: (context, state) =>
              MovieScreen(movieId: state.pathParameters['id']!),
        )]
      ),
      GoRoute(
        path: '/favorites',
        builder: (context, state) => const FavoritesViews(),
      ),
    ],
    builder: (context, state, child) => HomeScreen(childView: child),
  ),  
]);
