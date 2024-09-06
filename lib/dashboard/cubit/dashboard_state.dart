part of 'dashboard_cubit.dart';

class DashboardState extends Equatable {
  final NavbarItem navbarItem;
  final int index;

  DashboardState(this.navbarItem, this.index);

  @override
  List<Object> get props => [this.navbarItem, this.index];
}
