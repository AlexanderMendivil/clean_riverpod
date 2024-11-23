import 'package:clean_riverpod/domain/entities/movie.dart';
import 'package:clean_riverpod/presentation/providers/movies/favorites/favorite_repository_provider.dart';
import 'package:clean_riverpod/presentation/providers/movies/favorites/favorites_movies.dart';
import 'package:clean_riverpod/router/app_router.dart';
import 'package:clean_riverpod/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  await dotenv.load(fileName: ".env");

  final dir = await getApplicationDocumentsDirectory();
final isar = Isar.open(
  schemas: [MovieSchema],
  directory: dir.path,
);
  runApp(ProviderScope(child: MyApp(isar: isar,)));
}

class MyApp extends ConsumerWidget {
  final Isar isar;
  const MyApp({super.key, required this.isar});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {  
    ref.read(favoriteMoviesProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      title: 'Flutter Demo',
      theme: AppTheme().getTheme(),
    );
  }
}
