// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => $checkedCreate(
      'User',
      json,
      ($checkedConvert) {
        final val = User(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          paymentStatus: $checkedConvert('payment_status', (v) => v as String),
          timeEnd: $checkedConvert('time_end', (v) => v as String),
          unique: $checkedConvert('unique', (v) => v as String),
          fullName: $checkedConvert('full_name', (v) => v as String),
          fatherName: $checkedConvert('father_name', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          dateOfBirth: $checkedConvert('date_of_birth', (v) => v as String),
          gender: $checkedConvert('gender', (v) => v as String),
          phoneNumber: $checkedConvert('phone_number', (v) => v as String),
          whatsappNumber:
              $checkedConvert('whatsapp_number', (v) => v as String),
          collegeState: $checkedConvert('college_state', (v) => v as String),
          birthPlace: $checkedConvert('birth_place', (v) => v as String),
          collegeName: $checkedConvert('college_name', (v) => v as String),
          branchName: $checkedConvert('branch_name', (v) => v as String),
          degreeName: $checkedConvert('degree_name', (v) => v as String),
          passingYear:
              $checkedConvert('passing_year', (v) => (v as num).toInt()),
          password: $checkedConvert('password', (v) => v as String),
          verified: $checkedConvert('verified', (v) => v as bool),
          otp: $checkedConvert('otp', (v) => (v as num).toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'paymentStatus': 'payment_status',
        'timeEnd': 'time_end',
        'fullName': 'full_name',
        'fatherName': 'father_name',
        'dateOfBirth': 'date_of_birth',
        'phoneNumber': 'phone_number',
        'whatsappNumber': 'whatsapp_number',
        'collegeState': 'college_state',
        'birthPlace': 'birth_place',
        'collegeName': 'college_name',
        'branchName': 'branch_name',
        'degreeName': 'degree_name',
        'passingYear': 'passing_year'
      },
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'payment_status': instance.paymentStatus,
      'time_end': instance.timeEnd,
      'unique': instance.unique,
      'full_name': instance.fullName,
      'father_name': instance.fatherName,
      'email': instance.email,
      'date_of_birth': instance.dateOfBirth,
      'gender': instance.gender,
      'phone_number': instance.phoneNumber,
      'whatsapp_number': instance.whatsappNumber,
      'college_state': instance.collegeState,
      'birth_place': instance.birthPlace,
      'college_name': instance.collegeName,
      'branch_name': instance.branchName,
      'degree_name': instance.degreeName,
      'passing_year': instance.passingYear,
      'password': instance.password,
      'verified': instance.verified,
      'otp': instance.otp,
    };
