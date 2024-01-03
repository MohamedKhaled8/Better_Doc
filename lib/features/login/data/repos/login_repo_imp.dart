import 'package:bestdoctorappointmentapp/core/networking/api_result.dart';
import 'package:bestdoctorappointmentapp/core/networking/api_services.dart';
import 'package:bestdoctorappointmentapp/core/networking/api_error_handler.dart';
import 'package:bestdoctorappointmentapp/features/login/data/repos/login_repo.dart';
import 'package:bestdoctorappointmentapp/features/login/data/models/login_response.dart';
import 'package:bestdoctorappointmentapp/features/login/data/models/login_request_body.dart';

class LoginRepoImp extends LoginRepo{
  final ApiService _apiService;
  LoginRepoImp(
    this._apiService,
  );

  @override
  Future<ApiResult<LoginResponse>> login(
      LoginRequstBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
