import 'package:fmvvm/model/user.model.dart';
import 'package:fmvvm/view-models/signup.viewmodel.dart';

class AccountRepository {
  Future<UserModel> createAccount(SignupViewModel model) async {
    await Future.delayed(Duration(milliseconds: 1500));
    return UserModel(
      id: "1",
      name: "Thiago",
      email: "thiagotn@gmail.com",
      picture: "https://picsum.photos/200/300",
      role: "student",
      token: "xpto",
    );
  }
}
