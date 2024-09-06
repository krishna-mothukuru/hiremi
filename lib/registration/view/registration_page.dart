import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hiremi/registration/registration.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Text(
                "Welcome Settings"), /*Navigator.of(context).push<void>(
              SettingsPage.route(),
            ),*/
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<RegistrationCubit, RegistrationState>(
          builder: (context, state) {
            return switch (state.status) {
              RegistrationStatus.initial => const RegistrationEmpty(),
              RegistrationStatus.loading => const RegistrationLoading(),
              RegistrationStatus.failure => const RegistrationError(),
              RegistrationStatus.success => RegistrationPopulated(
                  user: state.user,
                ),
            };
          },
        ),
      ),
    );
  }
}
