import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hiremi/dashboard/constants/nav_bar_items.dart';

part 'dashboard_state.dart';

class NavigationCubit extends Cubit<DashboardState> {
  NavigationCubit() : super(DashboardState(NavbarItem.Home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.Home:
        emit(DashboardState(NavbarItem.Home, 0));
        break;
      case NavbarItem.Applies:
        emit(DashboardState(NavbarItem.Applies, 1));
        break;
      case NavbarItem.Hiremi:
        emit(DashboardState(NavbarItem.Hiremi, 2));
        break;
      case NavbarItem.Queries:
        emit(DashboardState(NavbarItem.Queries, 3));
        break;
      case NavbarItem.Profile:
        emit(DashboardState(NavbarItem.Profile, 4));
        break;
    }
  }
}
