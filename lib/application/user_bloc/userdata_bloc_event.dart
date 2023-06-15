// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'userdata_bloc_bloc.dart';

abstract class UserdataBlocEvent extends Equatable {
  const UserdataBlocEvent();
  @override
  List<Object?> get props => [];
}

//initial
class UserInitEvent extends UserdataBlocEvent {}

class UserAllDataEvent extends UserdataBlocEvent {
  const UserAllDataEvent();
  @override
  List<Object?> get props => [];
}



//add
class UserAddEvent extends UserdataBlocEvent {
  final UserModel user;
  const UserAddEvent({
    required this.user,
  });
  @override
  List<Object?> get props => [user];
}

class UserDeleteEvent extends UserdataBlocEvent {
  final UserModel user;
  const UserDeleteEvent({required this.user});
  @override
  List<Object?> get props => [user];
}
class UserDeleteallEvent extends UserdataBlocEvent {
 
  const UserDeleteallEvent();
  @override
  List<Object?> get props => [];
}
