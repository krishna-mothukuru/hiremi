// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationState _$RegistrationStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RegistrationState',
      json,
      ($checkedConvert) {
        final val = RegistrationState(
          status: $checkedConvert(
              'status',
              (v) =>
                  $enumDecodeNullable(_$RegistrationStatusEnumMap, v) ??
                  RegistrationStatus.initial),
          user: $checkedConvert(
              'user',
              (v) =>
                  v == null ? null : User.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$RegistrationStateToJson(RegistrationState instance) =>
    <String, dynamic>{
      'status': _$RegistrationStatusEnumMap[instance.status]!,
      'user': instance.user.toJson(),
    };

const _$RegistrationStatusEnumMap = {
  RegistrationStatus.initial: 'initial',
  RegistrationStatus.loading: 'loading',
  RegistrationStatus.success: 'success',
  RegistrationStatus.failure: 'failure',
};
