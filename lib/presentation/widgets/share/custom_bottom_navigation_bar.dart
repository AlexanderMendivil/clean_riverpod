import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  static int getCurrentIndex(BuildContext context){
    final String location = GoRouterState.of(context).matchedLocation;

    switch (location) {
      case '/':
        return 0;
      case '/':
        return 1;
      case '/favorites':
        return 2;
      default:
        return 0;
    }
  }
  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/');
        break;
      case 2:
        context.go('/favorites');
        break;
      default:
        context.go('/');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(      
      type: BottomNavigationBarType.fixed,
      currentIndex: getCurrentIndex(context),
        elevation: 16,
        onTap: (int index) => _onItemTapped(context, index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_max), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.label_outline), label: 'Categorias'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Favoritos'),
        ]);
  }
}
