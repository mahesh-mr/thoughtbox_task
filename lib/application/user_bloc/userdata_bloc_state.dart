// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'userdata_bloc_bloc.dart';

abstract class UserdataBlocState extends Equatable {
  const UserdataBlocState();
  @override
  List<Object?> get props => [];
}

// initial
class UserdataBlocInitial extends UserdataBlocState {
  const UserdataBlocInitial();
  @override
  List<Object?> get props => [];
}

///add
class UserdataDisplayState extends UserdataBlocState {
  final List<UserModel> user;
  const UserdataDisplayState({
    required this.user,
  });
  @override
  List<Object?> get props => [user];
}

//delete
class UserdataAddSingleState extends UserdataBlocState {
  final UserModel user;
  const UserdataAddSingleState({
    required this.user,
  });
  @override
  List<Object?> get props => [user];
}
