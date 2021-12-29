part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final User user;
  ActivateUser(this.user);
}

class ChangeAgeUser extends UserEvent {
  final int age;
  ChangeAgeUser(this.age);
}

class AddProfessionUser extends UserEvent {
  final List<String> professions;
  AddProfessionUser(this.professions);
}
