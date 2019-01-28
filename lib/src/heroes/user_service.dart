class User {
  final bool isAuthorized;
  final String name;

  User(this.name, [this.isAuthorized = false]);
}

final User _alice = User('Alice', true);
final User _bob = User('Bob', false);

class UserService {
  User user;
  UserService(): user = _bob;

  User getNewUser () => user = user == _bob ? _alice : _bob;
}