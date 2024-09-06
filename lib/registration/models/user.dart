import 'package:equatable/equatable.dart';
import 'package:hiremi_repository/hiremi_repository.dart' as hiremi_repository;
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

  factory User.fromRepository(hiremi_repository.User user) {
    return User(
      id: user.id,
      paymentStatus: user.paymentStatus,
      timeEnd: user.timeEnd,
      unique: user.unique,
      fullName: user.fullName,
      fatherName: user.fatherName,
      email: user.email,
      dateOfBirth: user.dateOfBirth,
      gender: user.gender,
      phoneNumber: user.phoneNumber,
      whatsappNumber: user.whatsappNumber,
      collegeState: user.collegeState,
      birthPlace: user.birthPlace,
      collegeName: user.collegeName,
      branchName: user.branchName,
      degreeName: user.degreeName,
      passingYear: user.passingYear,
      password: user.password,
      verified: user.verified,
      otp: user.otp,
    );
  }

  static final empty = User(
    id: 0,
    paymentStatus: 'null',
    timeEnd: 'null',
    unique: 'null',
    fullName: 'null',
    fatherName: 'null',
    email: 'null',
    dateOfBirth: 'null',
    gender: 'null',
    phoneNumber: 'null',
    whatsappNumber: 'null',
    collegeState: 'null',
    birthPlace: 'null',
    collegeName: 'null',
    branchName: 'null',
    degreeName: 'null',
    passingYear: 0,
    password: 'null',
    verified: false,
    otp: 0,
  );

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
        otp,
      ];

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    int? id,
    String? paymentStatus,
    String? timeEnd,
    String? unique,
    String? fullName,
    String? fatherName,
    String? email,
    String? dateOfBirth,
    String? gender,
    String? phoneNumber,
    String? whatsappNumber,
    String? collegeState,
    String? birthPlace,
    String? collegeName,
    String? branchName,
    String? degreeName,
    int? passingYear,
    String? password,
    bool? verified,
    int? otp,
  }) {
    return User(
      id: id ?? this.id,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      timeEnd: timeEnd ?? this.timeEnd,
      unique: unique ?? this.unique,
      fullName: fullName ?? this.fullName,
      fatherName: fatherName ?? this.fatherName,
      email: email ?? this.email,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      gender: gender ?? this.gender,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      whatsappNumber: whatsappNumber ?? this.whatsappNumber,
      collegeState: collegeState ?? this.collegeState,
      birthPlace: birthPlace ?? this.birthPlace,
      collegeName: collegeName ?? this.collegeName,
      branchName: branchName ?? this.branchName,
      degreeName: degreeName ?? this.degreeName,
      passingYear: passingYear ?? this.passingYear,
      password: password ?? this.password,
      verified: verified ?? this.verified,
      otp: otp ?? this.otp,
    );
  }
}
