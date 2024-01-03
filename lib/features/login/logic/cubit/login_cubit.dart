import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bestdoctorappointmentapp/features/login/logic/cubit/login_state.dart';
import 'package:bestdoctorappointmentapp/features/login/data/repos/login_repo_imp.dart';
import 'package:bestdoctorappointmentapp/features/login/data/models/login_request_body.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepoImp _loginRepoImp;
  LoginCubit(
    this._loginRepoImp,
  ) : super(const LoginState.initial());
  final formKey = GlobalKey<FormState>();
  TextEditingController emailCont = TextEditingController();
  TextEditingController passCont = TextEditingController();

  void emitLoginState(LoginRequstBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepoImp.login(loginRequestBody);

    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrroModel.message ?? ''));
    });
  }
}
