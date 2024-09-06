part of 'registration_cubit.dart';

enum RegistrationStatus { initial, loading, success, failure }

extension WeatherStatusX on RegistrationStatus {
  bool get isInitial => this == RegistrationStatus.initial;
  bool get isLoading => this == RegistrationStatus.loading;
  bool get isSuccess => this == RegistrationStatus.success;
  bool get isFailure => this == RegistrationStatus.failure;
}

@JsonSerializable()
final class RegistrationState extends Equatable {
  RegistrationState({
    this.status = RegistrationStatus.initial,
    User? user,
  }) : user = user ?? User.empty;

  factory RegistrationState.fromJson(Map<String, dynamic> json) =>
      _$RegistrationStateFromJson(json);

  final RegistrationStatus status;
  final User user;

  RegistrationState copyWith({
    RegistrationStatus? status,
    User? user,
  }) {
    return RegistrationState(
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toJson() => _$RegistrationStateToJson(this);

  @override
  List<Object?> get props => [status, user];
}
