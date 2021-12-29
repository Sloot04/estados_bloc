import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:estados/models/usuario.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUser>((event, emit) => emit(UserSetState(event.user)));
    on<ChangeAgeUser>((event, emit) {
      if (!state.existUser) return;

      emit(UserSetState(state.user!.copyWith(edad: event.age)));
    });
    on<AddProfessionUser>((event, emit){
      if(!state.existUser) return;
      emit(UserSetState(state.user!.copyWith(profesiones: state.user!.profesiones + event.professions )));
    });
  }
}
