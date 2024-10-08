import 'package:clean_riverpod/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
    routes: [
  GoRoute(
    path: 'movie/:id',
    name: MovieScreen.name,
    builder: (context, state) => MovieScreen(movieId: state.pathParameters['id']!),
  )

    ]
  ),
  
]);
