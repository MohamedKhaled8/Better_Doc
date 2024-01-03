import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:bestdoctorappointmentapp/core/networking/api_constant.dart';
import 'package:bestdoctorappointmentapp/features/login/data/models/login_response.dart';
import 'package:bestdoctorappointmentapp/features/login/data/models/login_request_body.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

// --------------------------------- Auth --------------------------------- //
  

  @POST(ApiConstant.login)
  Future<LoginResponse> login(
    @Body() LoginRequstBody loginRequestBody,
  );
}
