import 'package:flowcase/data/repository/auth/auth_repository_remote.dart';
import 'package:flowcase/routing/routes.dart';
import 'package:flowcase/ui/features/articles/widgets/article_screen.dart';
import 'package:flowcase/ui/features/auth/view_models/login_view_model.dart';
import 'package:flowcase/ui/features/auth/widgets/login_screen.dart';
import 'package:flowcase/ui/features/favorites/widgets/favorite_screen.dart';
import 'package:flowcase/ui/features/feed/widgets/feed_screen.dart';
import 'package:flowcase/ui/features/home/widgets/home_screen.dart';
import 'package:flowcase/ui/features/notifications/widgets/notification_screen.dart';
import 'package:flowcase/ui/features/profile/view_models/profile_view_model.dart';
import 'package:flowcase/ui/features/profile/widgets/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter router(AuthRepositoryRemote authRepository) => GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.feed,
  debugLogDiagnostics: true,
  refreshListenable: authRepository,
  redirect: (BuildContext context, GoRouterState state) async {
    final loggedIn = await authRepository.isAuthenticated;

    final isGoingToLogin = state.matchedLocation == Routes.login;

    if (!loggedIn) {
      if (!isGoingToLogin) {
        return Routes.login;
      }
    }

    if (loggedIn) {
      if (isGoingToLogin) {
        return Routes.feed;
      }
    }

    return null;
  },
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (context, state) {
        return LoginScreen(
          viewModel: LoginViewModel(authRepository: authRepository),
        );
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HomeWrapperScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.feed,
              builder: (context, state) => const FeedScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.favorites,
              builder: (context, state) => const FavoriteScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.notifications,
              builder: (context, state) => const NotificationScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.profile,
              builder: (context, state) => ProfileScreen(
                viewModel: ProfileViewModel(authRepository: authRepository),
              ),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/article/:id',
      builder: (context, state) {
        final idString = state.pathParameters['id'];
        final id = int.tryParse(idString ?? '') ?? 0;

        return ArticleScreen(id: id);
      },
    ),
  ],
);
