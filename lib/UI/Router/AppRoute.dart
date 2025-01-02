import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import '../Home/HomeScreen.dart';
import '../SplashAndOnboardScreens/OnboardScreen1.dart';
import '../SplashAndOnboardScreens/OnboardScreen2.dart';
import '../SplashAndOnboardScreens/OnboardScreen3.dart';
import '../SplashAndOnboardScreens/LoginScreen.dart';
import '../SplashAndOnboardScreens/SplashScreen.dart';


final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: '/onboard1',
      pageBuilder: (context, state) => CustomTransitionPage(
        child: OnboardScreen1(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            )),
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/onboard2',
      pageBuilder: (context, state) => CustomTransitionPage(
        child: OnboardScreen2(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            )),
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/onboard3',
      pageBuilder: (context, state) => CustomTransitionPage(
        child: OnboardScreen3(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            )),
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
  ],
);
