import 'package:equatable/equatable.dart';
import 'package:hiremi/registration/registration.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

part 'registration_cubit.g.dart';
part 'registration_state.dart';

class RegistrationCubit extends HydratedCubit<RegistrationState> {
  RegistrationCubit(this._hiremiRepository) : super(RegistrationState());

  final HiremiRepository _hiremiRepository;

  Future<void> fetchUsers() async {
    emit(state.copyWith(status: RegistrationStatus.loading));

    try {
      emit(
        state.copyWith(
          status: RegistrationStatus.success,
          user: null, //user.copyWith(),
        ),
      );
    } on Exception {
      emit(state.copyWith(status: RegistrationStatus.failure));
    }
  }

  @override
  RegistrationState fromJson(Map<String, dynamic> json) =>
      RegistrationState.fromJson(json);

  @override
  Map<String, dynamic> toJson(RegistrationState state) => state.toJson();
}
