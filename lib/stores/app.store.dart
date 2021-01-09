import 'package:mobx/mobx.dart';
part 'app.store.g.dart';

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  @observable
  String name = "";
  @observable
  String email = "";
  @observable
  String picture = "https://placehold.it/200";
  @observable
  String token = "";

  @action
  setUser(String pName, String pEmail, String pPicture, String pToken) {
    this.name = pName;
    this.email = pEmail;
    this.picture = pPicture;
    this.token = pToken;
  }
}
