import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:simple/routing/app_router.dart';
import 'package:simple/services/session/session_service.dart';

@singleton
class AuthGuard extends AutoRouteGuard {
  final SessionService sessionService;

  AuthGuard(this.sessionService);

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (sessionService.isLoggedIn) {
      print('is logged in ');
      resolver.next();
    } else {
      print('is not logged in ');
      await router.push(const AuthRoute());
      resolver.next(false);
    }
  }
}
