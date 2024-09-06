// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num).toInt(),
      paymentStatus: json['payment_status'] as String,
      timeEnd: json['time_end'] as String,
      unique: json['unique'] as String,
      fullName: json['full_name'] as String,
      fatherName: json['father_name'] as String,
      email: json['email'] as String,
      dateOfBirth: json['date_of_birth'] as String,
      gender: json['gender'] as String,
      phoneNumber: json['phone_number'] as String,
      whatsappNumber: json['whatsapp_number'] as String,
      collegeState: json['college_state'] as String,
      birthPlace: json['birth_place'] as String,
      collegeName: json['college_name'] as String,
      branchName: json['branch_name'] as String,
      degreeName: json['degree_name'] as String,
      passingYear: (json['passing_year'] as num).toInt(),
      password: json['password'] as String,
      verified: json['verified'] as bool,
      otp: (json['otp'] as num).toInt(),
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
