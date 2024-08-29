import 'package:auto_route/auto_route.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wheel_crm/core/app/router/app_routes.gr.dart';
import 'package:wheel_crm/core/const/shared_const.dart';
import 'package:wheel_crm/injection/injection.dart';

class OnBoardGuard extends AutoRouteGuard{
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if(getIt<SharedPreferences>().getBool(SharedPreferenceKeys.isOnBoardingShown.toString()) ?? false){
      router.push(const AuthRoute());
    }else{
      resolver.next(true);
    }
  }
  
}