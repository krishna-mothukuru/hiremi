import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  const User({
    required this.id,
    required this.paymentStatus,
    required this.timeEnd,
    required this.unique,
    required this.fullName,
    required this.fatherName,
    required this.email,
    required this.dateOfBirth,
    required this.gender,
    required this.phoneNumber,
    required this.whatsappNumber,
    required this.collegeState,
    required this.birthPlace,
    required this.collegeName,
    required this.branchName,
    required this.degreeName,
    required this.passingYear,
    required this.password,
    required this.verified,
    required this.otp,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  final int id;
  @JsonKey(name: 'payment_status')
  final String paymentStatus;
  @JsonKey(name: 'time_end')
  final String timeEnd;
  final String unique;
  @JsonKey(name: 'full_name')
  final String fullName;
  @JsonKey(name: 'father_name')
  final String fatherName;
  final String email;
  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;
  final String gender;
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @JsonKey(name: 'whatsapp_number')
  final String whatsappNumber;
  @JsonKey(name: 'college_state')
  final String collegeState;
  @JsonKey(name: 'birth_place')
  final String birthPlace;
  @JsonKey(name: 'college_name')
  final String collegeName;
  @JsonKey(name: 'branch_name')
  final String branchName;
  @JsonKey(name: 'degree_name')
  final String degreeName;
  @JsonKey(name: 'passing_year')
  final int passingYear;
  final String password;
  final bool verified;
  final int otp;

  @override
  List<Object> get props => [
        id,
        paymentStatus,
        timeEnd,
        unique,
        fullName,
        fatherName,
        email,
        dateOfBirth,
        gender,
        phoneNumber,
        whatsappNumber,
        collegeState,
        birthPlace,
        collegeName,
        branchName,
        degreeName,
        passingYear,
        password,
        verified,
        otp
      ];
}
