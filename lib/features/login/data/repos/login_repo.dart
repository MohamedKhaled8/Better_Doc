import '../models/login_response.dart';
import '../models/login_request_body.dart';
import '../../../../core/networking/api_result.dart';

abstract class LoginRepo {
  Future<ApiResult<LoginResponse>> login(LoginRequstBody loginRequestBody);
}
