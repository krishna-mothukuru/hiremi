import 'dart:async';

import 'package:hiremi_api/hiremi_api.dart' hide Hiremi;

class HiremiRepository {
  HiremiRepository({HiremiApiClient? hiremiApiClient})
      : _hiremiApiClient = hiremiApiClient ?? HiremiApiClient();

  final HiremiApiClient _hiremiApiClient;

  Future<User> getUser() async {
    final user = await _hiremiApiClient.hiremiUsers();
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
}
