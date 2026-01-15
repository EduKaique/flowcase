abstract final class Routes {
  static const splash = '/splash';
  static const onboarding = '/onboarding';
  static const login = '/login';
  static const signup = '/signup';
  static const preferencesOnboarding = '/preferences-onboarding';
  static const feed = '/feed';
  static String article(int id) => 'article/$id';
  static const favorites = '/favorites';
  static const notifications = '/notifications';
  static const profile = '/profile';
  static const settings = '/settings';
}