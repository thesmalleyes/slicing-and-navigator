import 'package:go_router/go_router.dart';
import 'package:movieapp/home_page.dart';
import 'package:movieapp/login_page.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/home/:id',
      builder: (context, state) => HomePage(
        id: state.pathParameters['id']!,
      ),
    ),
  ],
);
