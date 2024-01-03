import 'package:json_annotation/json_annotation.dart';


part 'login_request_body.g.dart';
@JsonSerializable()
class LoginRequstBody {
  final String email;
  final String password;
  LoginRequstBody({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() => _$LoginRequstBodyToJson(this);
}
