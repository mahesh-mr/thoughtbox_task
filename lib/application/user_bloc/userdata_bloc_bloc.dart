
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:thoughtbox/domain/model_user/model_user.dart';
import 'package:thoughtbox/infrastructure/box/hivebox.dart';
part 'userdata_bloc_event.dart';
part 'userdata_bloc_state.dart';

class UserdataBlocBloc extends Bloc<UserdataBlocEvent, UserdataBlocState> {
  UserdataBlocBloc() : super(const UserdataBlocInitial()) {
    Box<UserModel> boxUserModel;
    List<UserModel> usermodel = [];
    on<UserAllDataEvent>((event, emit) {
      try {
        boxUserModel = Boxes.getTransactions();
        usermodel = boxUserModel.values.toList();
        emit(UserdataDisplayState(user: usermodel));
      } catch (e) {
        print(e);
      }
    });
    on<UserAddEvent>((event, emit) {
      try {
        final box = Boxes.getTransactions();
        box.add(event.user);
        add(const UserAllDataEvent());
      } catch (e) {
        print(e);
      }
    });
  on<UserDeleteallEvent>((event, emit) {
      try {
        final box = Boxes.getTransactions();
        box.clear();
        add(const UserAllDataEvent());
      } catch (e) {
        print(e);
      }
    });
    on<UserDeleteEvent>((event, emit) {
      try {
        event.user.delete();
        add(const UserAllDataEvent());
      } catch (e) {
        print(e);
      }
    });
  }
}
