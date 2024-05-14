//
//  Generated code. Do not modify.
//  source: admin.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'admin.pb.dart' as $1;
import './empty.pb.dart' as $0;

export 'admin.pb.dart';

@$pb.GrpcServiceName('api.admin.v1.Admin')
class AdminClient extends $grpc.Client {
  static final _$captcha = $grpc.ClientMethod<$0.Empty, $1.CaptchaResponse>(
      '/api.admin.v1.Admin/Captcha',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CaptchaResponse.fromBuffer(value));
  static final _$verifyCaptcha =
      $grpc.ClientMethod<$1.VerifyCaptchaRequest, $1.VerifyCaptchaResponse>(
          '/api.admin.v1.Admin/VerifyCaptcha',
          ($1.VerifyCaptchaRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.VerifyCaptchaResponse.fromBuffer(value));
  static final _$sMSCaptcha =
      $grpc.ClientMethod<$1.SMSCaptchaRequest, $1.CaptchaResponse>(
          '/api.admin.v1.Admin/SMSCaptcha',
          ($1.SMSCaptchaRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CaptchaResponse.fromBuffer(value));
  static final _$register =
      $grpc.ClientMethod<$1.RegisterRequest, $1.RegisterResponse>(
          '/api.admin.v1.Admin/Register',
          ($1.RegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.RegisterResponse.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$1.LoginRequest, $1.LoginResponse>(
      '/api.admin.v1.Admin/Login',
      ($1.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.LoginResponse.fromBuffer(value));
  static final _$getTokenByCode =
      $grpc.ClientMethod<$1.GetTokenByCodeRequest, $1.GetTokenByCodeResponse>(
          '/api.admin.v1.Admin/GetTokenByCode',
          ($1.GetTokenByCodeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetTokenByCodeResponse.fromBuffer(value));
  static final _$logout =
      $grpc.ClientMethod<$1.LogoutRequest, $1.LogoutResponse>(
          '/api.admin.v1.Admin/Logout',
          ($1.LogoutRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.LogoutResponse.fromBuffer(value));
  static final _$loginInfo =
      $grpc.ClientMethod<$1.InfoRequest, $1.InfoResponse>(
          '/api.admin.v1.Admin/LoginInfo',
          ($1.InfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InfoResponse.fromBuffer(value));
  static final _$listAccount =
      $grpc.ClientMethod<$1.AccountRequest, $1.AccountResponse>(
          '/api.admin.v1.Admin/ListAccount',
          ($1.AccountRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AccountResponse.fromBuffer(value));
  static final _$listAccountBySMS =
      $grpc.ClientMethod<$1.SMSAccountRequest, $1.AccountResponse>(
          '/api.admin.v1.Admin/ListAccountBySMS',
          ($1.SMSAccountRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AccountResponse.fromBuffer(value));
  static final _$totalOnlineUser =
      $grpc.ClientMethod<$0.Empty, $1.TotalOnlineUserResponse>(
          '/api.admin.v1.Admin/TotalOnlineUser',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.TotalOnlineUserResponse.fromBuffer(value));

  AdminClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.CaptchaResponse> captcha($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$captcha, request, options: options);
  }

  $grpc.ResponseFuture<$1.VerifyCaptchaResponse> verifyCaptcha(
      $1.VerifyCaptchaRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyCaptcha, request, options: options);
  }

  $grpc.ResponseFuture<$1.CaptchaResponse> sMSCaptcha(
      $1.SMSCaptchaRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sMSCaptcha, request, options: options);
  }

  $grpc.ResponseFuture<$1.RegisterResponse> register($1.RegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$1.LoginResponse> login($1.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetTokenByCodeResponse> getTokenByCode(
      $1.GetTokenByCodeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTokenByCode, request, options: options);
  }

  $grpc.ResponseFuture<$1.LogoutResponse> logout($1.LogoutRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$logout, request, options: options);
  }

  $grpc.ResponseFuture<$1.InfoResponse> loginInfo($1.InfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loginInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.AccountResponse> listAccount(
      $1.AccountRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAccount, request, options: options);
  }

  $grpc.ResponseFuture<$1.AccountResponse> listAccountBySMS(
      $1.SMSAccountRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAccountBySMS, request, options: options);
  }

  $grpc.ResponseFuture<$1.TotalOnlineUserResponse> totalOnlineUser(
      $0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$totalOnlineUser, request, options: options);
  }
}

@$pb.GrpcServiceName('api.admin.v1.Admin')
abstract class AdminServiceBase extends $grpc.Service {
  $core.String get $name => 'api.admin.v1.Admin';

  AdminServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.CaptchaResponse>(
        'Captcha',
        captcha_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.CaptchaResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.VerifyCaptchaRequest, $1.VerifyCaptchaResponse>(
            'VerifyCaptcha',
            verifyCaptcha_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.VerifyCaptchaRequest.fromBuffer(value),
            ($1.VerifyCaptchaResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SMSCaptchaRequest, $1.CaptchaResponse>(
        'SMSCaptcha',
        sMSCaptcha_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SMSCaptchaRequest.fromBuffer(value),
        ($1.CaptchaResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RegisterRequest, $1.RegisterResponse>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RegisterRequest.fromBuffer(value),
        ($1.RegisterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LoginRequest, $1.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LoginRequest.fromBuffer(value),
        ($1.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetTokenByCodeRequest,
            $1.GetTokenByCodeResponse>(
        'GetTokenByCode',
        getTokenByCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetTokenByCodeRequest.fromBuffer(value),
        ($1.GetTokenByCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LogoutRequest, $1.LogoutResponse>(
        'Logout',
        logout_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LogoutRequest.fromBuffer(value),
        ($1.LogoutResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.InfoRequest, $1.InfoResponse>(
        'LoginInfo',
        loginInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.InfoRequest.fromBuffer(value),
        ($1.InfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AccountRequest, $1.AccountResponse>(
        'ListAccount',
        listAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AccountRequest.fromBuffer(value),
        ($1.AccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SMSAccountRequest, $1.AccountResponse>(
        'ListAccountBySMS',
        listAccountBySMS_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SMSAccountRequest.fromBuffer(value),
        ($1.AccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.TotalOnlineUserResponse>(
        'TotalOnlineUser',
        totalOnlineUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.TotalOnlineUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CaptchaResponse> captcha_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return captcha(call, await request);
  }

  $async.Future<$1.VerifyCaptchaResponse> verifyCaptcha_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.VerifyCaptchaRequest> request) async {
    return verifyCaptcha(call, await request);
  }

  $async.Future<$1.CaptchaResponse> sMSCaptcha_Pre($grpc.ServiceCall call,
      $async.Future<$1.SMSCaptchaRequest> request) async {
    return sMSCaptcha(call, await request);
  }

  $async.Future<$1.RegisterResponse> register_Pre(
      $grpc.ServiceCall call, $async.Future<$1.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$1.LoginResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$1.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$1.GetTokenByCodeResponse> getTokenByCode_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetTokenByCodeRequest> request) async {
    return getTokenByCode(call, await request);
  }

  $async.Future<$1.LogoutResponse> logout_Pre(
      $grpc.ServiceCall call, $async.Future<$1.LogoutRequest> request) async {
    return logout(call, await request);
  }

  $async.Future<$1.InfoResponse> loginInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$1.InfoRequest> request) async {
    return loginInfo(call, await request);
  }

  $async.Future<$1.AccountResponse> listAccount_Pre(
      $grpc.ServiceCall call, $async.Future<$1.AccountRequest> request) async {
    return listAccount(call, await request);
  }

  $async.Future<$1.AccountResponse> listAccountBySMS_Pre($grpc.ServiceCall call,
      $async.Future<$1.SMSAccountRequest> request) async {
    return listAccountBySMS(call, await request);
  }

  $async.Future<$1.TotalOnlineUserResponse> totalOnlineUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return totalOnlineUser(call, await request);
  }

  $async.Future<$1.CaptchaResponse> captcha(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.VerifyCaptchaResponse> verifyCaptcha(
      $grpc.ServiceCall call, $1.VerifyCaptchaRequest request);
  $async.Future<$1.CaptchaResponse> sMSCaptcha(
      $grpc.ServiceCall call, $1.SMSCaptchaRequest request);
  $async.Future<$1.RegisterResponse> register(
      $grpc.ServiceCall call, $1.RegisterRequest request);
  $async.Future<$1.LoginResponse> login(
      $grpc.ServiceCall call, $1.LoginRequest request);
  $async.Future<$1.GetTokenByCodeResponse> getTokenByCode(
      $grpc.ServiceCall call, $1.GetTokenByCodeRequest request);
  $async.Future<$1.LogoutResponse> logout(
      $grpc.ServiceCall call, $1.LogoutRequest request);
  $async.Future<$1.InfoResponse> loginInfo(
      $grpc.ServiceCall call, $1.InfoRequest request);
  $async.Future<$1.AccountResponse> listAccount(
      $grpc.ServiceCall call, $1.AccountRequest request);
  $async.Future<$1.AccountResponse> listAccountBySMS(
      $grpc.ServiceCall call, $1.SMSAccountRequest request);
  $async.Future<$1.TotalOnlineUserResponse> totalOnlineUser(
      $grpc.ServiceCall call, $0.Empty request);
}
