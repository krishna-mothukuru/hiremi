import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hiremi/dashboard/view/dashboard_page.dart';
import 'package:hiremi/hiremi_bloc_observer.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const HiremiBlocObserver();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  runApp(DashboardPage()); //HiremiApp(hiremiRepository: HiremiRepository()));
}
