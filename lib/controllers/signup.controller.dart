import 'package:fmvvm/model/user.model.dart';
import 'package:fmvvm/repositories/account.repository.dart';
import 'package:fmvvm/view-models/signup.viewmodel.dart';

class SignupController {
  AccountRepository repository;

  SignupController() {
    repository = new AccountRepository();
  }

  Future<UserModel> create(SignupViewModel model) async {
    model.busy = true;
    var user = await repository.createAccount(model);
    model.busy = false;
    return user;
  }
}
