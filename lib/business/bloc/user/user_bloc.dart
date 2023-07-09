import 'package:app/business/bloc/base_event.dart';
import 'package:app/business/bloc/user/user_event.dart';
import 'package:app/business/bloc/user/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Bloc<BaseEvent, UserState> {
  UserBloc() : super(UserState.initial());

  bool get success => state.success;

  bool get isLoading => state.loading;

  bool get isLoggedIn => state.isLoggedIn;

  Future<dynamic> login(String email, String password) async {}

  void logout() {
    add(UserLogout());
  }
}
