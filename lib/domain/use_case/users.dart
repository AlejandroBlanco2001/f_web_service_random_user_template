import 'package:get/get.dart';

import '../../data/models/random_user_model.dart';
import '../entities/random_user.dart';
import '../repositories/user_repository.dart';

class Users {
  final UserRepository _userRepository = Get.find<UserRepository>();

  Future<void> addUser() async => await _userRepository.getUser();
  Future<List<RandomUser>> getAllUsers() async =>
      await _userRepository.getAllUsers();
  Future<void> deleteUser(id) async => await _userRepository.deleteUser(id);
  Future<void> deleteAll() async => await _userRepository.deleteAll();
  Future<void> updateUser(user) async => await _userRepository.updateUser(user);
}
