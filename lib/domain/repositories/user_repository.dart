import 'package:loggy/loggy.dart';

import '../../data/datasources/local/user_local_datasource.dart';
import '../../data/datasources/remote/user_remote_datasource.dart';
import '../../data/models/random_user_model.dart';
import '../entities/random_user.dart';

class UserRepository {
  UserLocalDataSource local = UserLocalDataSource();
  UserRemoteDatatasource remote = UserRemoteDatatasource();

  UserRepository() {
    logInfo("Starting UserRepository");
  }

  Future<bool> getUser() async {
    logInfo("Getting user from remote");
    RandomUser user = await remote.getUser();
    logInfo("Got user from remote");
    local.addUser(user);
    return true;
  }

  Future<List<RandomUser>> getAllUsers() async => await local.getAllUsers();

  Future<void> deleteUser(id) async => await local.deleteUser(id);

  Future<void> deleteAll() async => await local.deleteAll();

  Future<void> updateUser(user) async => await local.updateUser(user);
}
