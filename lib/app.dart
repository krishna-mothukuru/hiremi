import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiremi/registration/registration.dart';

class HiremiApp extends StatelessWidget {
  const HiremiApp({required HiremiRepository hiremiRepository, super.key})
      : _hiremiRepository = hiremiRepository;

  final HiremiRepository _hiremiRepository;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RegistrationCubit(_hiremiRepository),
      child: const HiremiAppView(),
    );
  }
}

class HiremiAppView extends StatelessWidget {
  const HiremiAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        textTheme: GoogleFonts.rajdhaniTextTheme(),
      ),
      home: const RegistrationPage(),
    );
  }
}
