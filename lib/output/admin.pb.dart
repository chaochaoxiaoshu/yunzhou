//
//  Generated code. Do not modify.
//  source: admin.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class RegisterResponse_Result extends $pb.GeneratedMessage {
  factory RegisterResponse_Result({
    $core.String? id,
    $core.String? mobile,
    $core.String? email,
    $core.String? nickName,
    $core.String? token,
    $fixnum.Int64? expiredAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (mobile != null) {
      $result.mobile = mobile;
    }
    if (email != null) {
      $result.email = email;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (token != null) {
      $result.token = token;
    }
    if (expiredAt != null) {
      $result.expiredAt = expiredAt;
    }
    return $result;
  }
  RegisterResponse_Result._() : super();
  factory RegisterResponse_Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterResponse_Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterResponse.Result', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'mobile')
    ..aOS(4, _omitFieldNames ? '' : 'email')
    ..aOS(5, _omitFieldNames ? '' : 'nickName')
    ..aOS(6, _omitFieldNames ? '' : 'token')
    ..aInt64(7, _omitFieldNames ? '' : 'expiredAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterResponse_Result clone() => RegisterResponse_Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterResponse_Result copyWith(void Function(RegisterResponse_Result) updates) => super.copyWith((message) => updates(message as RegisterResponse_Result)) as RegisterResponse_Result;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResponse_Result create() => RegisterResponse_Result._();
  RegisterResponse_Result createEmptyInstance() => create();
  static $pb.PbList<RegisterResponse_Result> createRepeated() => $pb.PbList<RegisterResponse_Result>();
  @$core.pragma('dart2js:noInline')
  static RegisterResponse_Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterResponse_Result>(create);
  static RegisterResponse_Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get mobile => $_getSZ(1);
  @$pb.TagNumber(3)
  set mobile($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasMobile() => $_has(1);
  @$pb.TagNumber(3)
  void clearMobile() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get nickName => $_getSZ(3);
  @$pb.TagNumber(5)
  set nickName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasNickName() => $_has(3);
  @$pb.TagNumber(5)
  void clearNickName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get token => $_getSZ(4);
  @$pb.TagNumber(6)
  set token($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasToken() => $_has(4);
  @$pb.TagNumber(6)
  void clearToken() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get expiredAt => $_getI64(5);
  @$pb.TagNumber(7)
  set expiredAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasExpiredAt() => $_has(5);
  @$pb.TagNumber(7)
  void clearExpiredAt() => clearField(7);
}

/// Data returned by registration and login
class RegisterResponse extends $pb.GeneratedMessage {
  factory RegisterResponse({
    $core.int? errcode,
    $core.String? errmsg,
    $core.String? requestId,
    RegisterResponse_Result? result,
  }) {
    final $result = create();
    if (errcode != null) {
      $result.errcode = errcode;
    }
    if (errmsg != null) {
      $result.errmsg = errmsg;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  RegisterResponse._() : super();
  factory RegisterResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'errcode', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'errmsg')
    ..aOS(3, _omitFieldNames ? '' : 'requestId')
    ..aOM<RegisterResponse_Result>(4, _omitFieldNames ? '' : 'result', subBuilder: RegisterResponse_Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterResponse clone() => RegisterResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterResponse copyWith(void Function(RegisterResponse) updates) => super.copyWith((message) => updates(message as RegisterResponse)) as RegisterResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResponse create() => RegisterResponse._();
  RegisterResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterResponse> createRepeated() => $pb.PbList<RegisterResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterResponse>(create);
  static RegisterResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get errcode => $_getIZ(0);
  @$pb.TagNumber(1)
  set errcode($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrcode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrcode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errmsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set errmsg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrmsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrmsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get requestId => $_getSZ(2);
  @$pb.TagNumber(3)
  set requestId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestId() => clearField(3);

  @$pb.TagNumber(4)
  RegisterResponse_Result get result => $_getN(3);
  @$pb.TagNumber(4)
  set result(RegisterResponse_Result v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearResult() => clearField(4);
  @$pb.TagNumber(4)
  RegisterResponse_Result ensureResult() => $_ensure(3);
}

class RegisterRequest extends $pb.GeneratedMessage {
  factory RegisterRequest({
    $core.String? mobile,
    $core.String? name,
    $core.String? nickName,
    $core.String? email,
    $core.String? password,
    $core.String? captcha,
    $core.String? captchaId,
  }) {
    final $result = create();
    if (mobile != null) {
      $result.mobile = mobile;
    }
    if (name != null) {
      $result.name = name;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (email != null) {
      $result.email = email;
    }
    if (password != null) {
      $result.password = password;
    }
    if (captcha != null) {
      $result.captcha = captcha;
    }
    if (captchaId != null) {
      $result.captchaId = captchaId;
    }
    return $result;
  }
  RegisterRequest._() : super();
  factory RegisterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mobile')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'nickName')
    ..aOS(4, _omitFieldNames ? '' : 'email')
    ..aOS(5, _omitFieldNames ? '' : 'password')
    ..aOS(6, _omitFieldNames ? '' : 'captcha')
    ..aOS(7, _omitFieldNames ? '' : 'captchaId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterRequest clone() => RegisterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterRequest copyWith(void Function(RegisterRequest) updates) => super.copyWith((message) => updates(message as RegisterRequest)) as RegisterRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterRequest create() => RegisterRequest._();
  RegisterRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterRequest> createRepeated() => $pb.PbList<RegisterRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterRequest>(create);
  static RegisterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mobile => $_getSZ(0);
  @$pb.TagNumber(1)
  set mobile($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMobile() => $_has(0);
  @$pb.TagNumber(1)
  void clearMobile() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nickName => $_getSZ(2);
  @$pb.TagNumber(3)
  set nickName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNickName() => $_has(2);
  @$pb.TagNumber(3)
  void clearNickName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get password => $_getSZ(4);
  @$pb.TagNumber(5)
  set password($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPassword() => $_has(4);
  @$pb.TagNumber(5)
  void clearPassword() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get captcha => $_getSZ(5);
  @$pb.TagNumber(6)
  set captcha($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCaptcha() => $_has(5);
  @$pb.TagNumber(6)
  void clearCaptcha() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get captchaId => $_getSZ(6);
  @$pb.TagNumber(7)
  set captchaId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCaptchaId() => $_has(6);
  @$pb.TagNumber(7)
  void clearCaptchaId() => clearField(7);
}

class ClientInfo extends $pb.GeneratedMessage {
  factory ClientInfo({
    $core.int? clientType,
    $core.String? deviceFingerprint,
    $core.String? cPUArchitecture,
    $core.String? iPs,
    $core.String? kernelType,
    $core.String? kernelVersion,
    $core.String? productName,
    $core.String? userHomeDirectory,
  }) {
    final $result = create();
    if (clientType != null) {
      $result.clientType = clientType;
    }
    if (deviceFingerprint != null) {
      $result.deviceFingerprint = deviceFingerprint;
    }
    if (cPUArchitecture != null) {
      $result.cPUArchitecture = cPUArchitecture;
    }
    if (iPs != null) {
      $result.iPs = iPs;
    }
    if (kernelType != null) {
      $result.kernelType = kernelType;
    }
    if (kernelVersion != null) {
      $result.kernelVersion = kernelVersion;
    }
    if (productName != null) {
      $result.productName = productName;
    }
    if (userHomeDirectory != null) {
      $result.userHomeDirectory = userHomeDirectory;
    }
    return $result;
  }
  ClientInfo._() : super();
  factory ClientInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClientInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'clientType', $pb.PbFieldType.OU3, protoName: 'clientType')
    ..aOS(2, _omitFieldNames ? '' : 'deviceFingerprint', protoName: 'deviceFingerprint')
    ..aOS(3, _omitFieldNames ? '' : 'CPUArchitecture', protoName: 'CPUArchitecture')
    ..aOS(4, _omitFieldNames ? '' : 'IPs', protoName: 'IPs')
    ..aOS(5, _omitFieldNames ? '' : 'KernelType', protoName: 'KernelType')
    ..aOS(6, _omitFieldNames ? '' : 'KernelVersion', protoName: 'KernelVersion')
    ..aOS(7, _omitFieldNames ? '' : 'ProductName', protoName: 'ProductName')
    ..aOS(8, _omitFieldNames ? '' : 'UserHomeDirectory', protoName: 'UserHomeDirectory')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientInfo clone() => ClientInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientInfo copyWith(void Function(ClientInfo) updates) => super.copyWith((message) => updates(message as ClientInfo)) as ClientInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientInfo create() => ClientInfo._();
  ClientInfo createEmptyInstance() => create();
  static $pb.PbList<ClientInfo> createRepeated() => $pb.PbList<ClientInfo>();
  @$core.pragma('dart2js:noInline')
  static ClientInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientInfo>(create);
  static ClientInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get clientType => $_getIZ(0);
  @$pb.TagNumber(1)
  set clientType($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientType() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get deviceFingerprint => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceFingerprint($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceFingerprint() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceFingerprint() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get cPUArchitecture => $_getSZ(2);
  @$pb.TagNumber(3)
  set cPUArchitecture($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCPUArchitecture() => $_has(2);
  @$pb.TagNumber(3)
  void clearCPUArchitecture() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get iPs => $_getSZ(3);
  @$pb.TagNumber(4)
  set iPs($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIPs() => $_has(3);
  @$pb.TagNumber(4)
  void clearIPs() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get kernelType => $_getSZ(4);
  @$pb.TagNumber(5)
  set kernelType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasKernelType() => $_has(4);
  @$pb.TagNumber(5)
  void clearKernelType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get kernelVersion => $_getSZ(5);
  @$pb.TagNumber(6)
  set kernelVersion($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasKernelVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearKernelVersion() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get productName => $_getSZ(6);
  @$pb.TagNumber(7)
  set productName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasProductName() => $_has(6);
  @$pb.TagNumber(7)
  void clearProductName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get userHomeDirectory => $_getSZ(7);
  @$pb.TagNumber(8)
  set userHomeDirectory($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUserHomeDirectory() => $_has(7);
  @$pb.TagNumber(8)
  void clearUserHomeDirectory() => clearField(8);
}

class LoginRequest extends $pb.GeneratedMessage {
  factory LoginRequest({
    $core.String? userUuid,
    $core.String? userId,
    $core.String? corpId,
    ClientInfo? clientInfo,
    $core.String? accessCode,
  }) {
    final $result = create();
    if (userUuid != null) {
      $result.userUuid = userUuid;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (corpId != null) {
      $result.corpId = corpId;
    }
    if (clientInfo != null) {
      $result.clientInfo = clientInfo;
    }
    if (accessCode != null) {
      $result.accessCode = accessCode;
    }
    return $result;
  }
  LoginRequest._() : super();
  factory LoginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userUuid')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..aOS(3, _omitFieldNames ? '' : 'corpId')
    ..aOM<ClientInfo>(4, _omitFieldNames ? '' : 'clientInfo', subBuilder: ClientInfo.create)
    ..aOS(5, _omitFieldNames ? '' : 'accessCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginRequest copyWith(void Function(LoginRequest) updates) => super.copyWith((message) => updates(message as LoginRequest)) as LoginRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() => $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userUuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set userUuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get corpId => $_getSZ(2);
  @$pb.TagNumber(3)
  set corpId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCorpId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCorpId() => clearField(3);

  @$pb.TagNumber(4)
  ClientInfo get clientInfo => $_getN(3);
  @$pb.TagNumber(4)
  set clientInfo(ClientInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasClientInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearClientInfo() => clearField(4);
  @$pb.TagNumber(4)
  ClientInfo ensureClientInfo() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get accessCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set accessCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccessCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccessCode() => clearField(5);
}

class GetTokenByCodeRequest extends $pb.GeneratedMessage {
  factory GetTokenByCodeRequest({
    $core.String? accessCode,
  }) {
    final $result = create();
    if (accessCode != null) {
      $result.accessCode = accessCode;
    }
    return $result;
  }
  GetTokenByCodeRequest._() : super();
  factory GetTokenByCodeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTokenByCodeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTokenByCodeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accessCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTokenByCodeRequest clone() => GetTokenByCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTokenByCodeRequest copyWith(void Function(GetTokenByCodeRequest) updates) => super.copyWith((message) => updates(message as GetTokenByCodeRequest)) as GetTokenByCodeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTokenByCodeRequest create() => GetTokenByCodeRequest._();
  GetTokenByCodeRequest createEmptyInstance() => create();
  static $pb.PbList<GetTokenByCodeRequest> createRepeated() => $pb.PbList<GetTokenByCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTokenByCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTokenByCodeRequest>(create);
  static GetTokenByCodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessCode() => clearField(1);
}

class GetTokenByCodeResponse_Result extends $pb.GeneratedMessage {
  factory GetTokenByCodeResponse_Result({
    $core.String? token,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  GetTokenByCodeResponse_Result._() : super();
  factory GetTokenByCodeResponse_Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTokenByCodeResponse_Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTokenByCodeResponse.Result', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(6, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTokenByCodeResponse_Result clone() => GetTokenByCodeResponse_Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTokenByCodeResponse_Result copyWith(void Function(GetTokenByCodeResponse_Result) updates) => super.copyWith((message) => updates(message as GetTokenByCodeResponse_Result)) as GetTokenByCodeResponse_Result;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTokenByCodeResponse_Result create() => GetTokenByCodeResponse_Result._();
  GetTokenByCodeResponse_Result createEmptyInstance() => create();
  static $pb.PbList<GetTokenByCodeResponse_Result> createRepeated() => $pb.PbList<GetTokenByCodeResponse_Result>();
  @$core.pragma('dart2js:noInline')
  static GetTokenByCodeResponse_Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTokenByCodeResponse_Result>(create);
  static GetTokenByCodeResponse_Result? _defaultInstance;

  @$pb.TagNumber(6)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(6)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(6)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(6)
  void clearToken() => clearField(6);
}

class GetTokenByCodeResponse extends $pb.GeneratedMessage {
  factory GetTokenByCodeResponse({
    $core.int? errcode,
    $core.String? errmsg,
    $core.String? requestId,
    GetTokenByCodeResponse_Result? result,
  }) {
    final $result = create();
    if (errcode != null) {
      $result.errcode = errcode;
    }
    if (errmsg != null) {
      $result.errmsg = errmsg;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  GetTokenByCodeResponse._() : super();
  factory GetTokenByCodeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTokenByCodeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTokenByCodeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'errcode', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'errmsg')
    ..aOS(3, _omitFieldNames ? '' : 'requestId')
    ..aOM<GetTokenByCodeResponse_Result>(4, _omitFieldNames ? '' : 'result', subBuilder: GetTokenByCodeResponse_Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTokenByCodeResponse clone() => GetTokenByCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTokenByCodeResponse copyWith(void Function(GetTokenByCodeResponse) updates) => super.copyWith((message) => updates(message as GetTokenByCodeResponse)) as GetTokenByCodeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTokenByCodeResponse create() => GetTokenByCodeResponse._();
  GetTokenByCodeResponse createEmptyInstance() => create();
  static $pb.PbList<GetTokenByCodeResponse> createRepeated() => $pb.PbList<GetTokenByCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTokenByCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTokenByCodeResponse>(create);
  static GetTokenByCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get errcode => $_getIZ(0);
  @$pb.TagNumber(1)
  set errcode($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrcode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrcode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errmsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set errmsg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrmsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrmsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get requestId => $_getSZ(2);
  @$pb.TagNumber(3)
  set requestId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestId() => clearField(3);

  @$pb.TagNumber(4)
  GetTokenByCodeResponse_Result get result => $_getN(3);
  @$pb.TagNumber(4)
  set result(GetTokenByCodeResponse_Result v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearResult() => clearField(4);
  @$pb.TagNumber(4)
  GetTokenByCodeResponse_Result ensureResult() => $_ensure(3);
}

class LoginResponse_Result extends $pb.GeneratedMessage {
  factory LoginResponse_Result({
    $core.String? id,
    $core.String? userId,
    $core.String? corpId,
    $core.String? token,
    $fixnum.Int64? expiredAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (corpId != null) {
      $result.corpId = corpId;
    }
    if (token != null) {
      $result.token = token;
    }
    if (expiredAt != null) {
      $result.expiredAt = expiredAt;
    }
    return $result;
  }
  LoginResponse_Result._() : super();
  factory LoginResponse_Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse_Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginResponse.Result', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(4, _omitFieldNames ? '' : 'userId')
    ..aOS(5, _omitFieldNames ? '' : 'corpId')
    ..aOS(6, _omitFieldNames ? '' : 'token')
    ..aInt64(7, _omitFieldNames ? '' : 'expiredAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResponse_Result clone() => LoginResponse_Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResponse_Result copyWith(void Function(LoginResponse_Result) updates) => super.copyWith((message) => updates(message as LoginResponse_Result)) as LoginResponse_Result;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginResponse_Result create() => LoginResponse_Result._();
  LoginResponse_Result createEmptyInstance() => create();
  static $pb.PbList<LoginResponse_Result> createRepeated() => $pb.PbList<LoginResponse_Result>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse_Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse_Result>(create);
  static LoginResponse_Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(4)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(4)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get corpId => $_getSZ(2);
  @$pb.TagNumber(5)
  set corpId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasCorpId() => $_has(2);
  @$pb.TagNumber(5)
  void clearCorpId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get token => $_getSZ(3);
  @$pb.TagNumber(6)
  set token($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasToken() => $_has(3);
  @$pb.TagNumber(6)
  void clearToken() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get expiredAt => $_getI64(4);
  @$pb.TagNumber(7)
  set expiredAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasExpiredAt() => $_has(4);
  @$pb.TagNumber(7)
  void clearExpiredAt() => clearField(7);
}

class LoginResponse extends $pb.GeneratedMessage {
  factory LoginResponse({
    $core.int? errcode,
    $core.String? errmsg,
    $core.String? requestId,
    LoginResponse_Result? result,
  }) {
    final $result = create();
    if (errcode != null) {
      $result.errcode = errcode;
    }
    if (errmsg != null) {
      $result.errmsg = errmsg;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  LoginResponse._() : super();
  factory LoginResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'errcode', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'errmsg')
    ..aOS(3, _omitFieldNames ? '' : 'requestId')
    ..aOM<LoginResponse_Result>(4, _omitFieldNames ? '' : 'result', subBuilder: LoginResponse_Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResponse clone() => LoginResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResponse copyWith(void Function(LoginResponse) updates) => super.copyWith((message) => updates(message as LoginResponse)) as LoginResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginResponse create() => LoginResponse._();
  LoginResponse createEmptyInstance() => create();
  static $pb.PbList<LoginResponse> createRepeated() => $pb.PbList<LoginResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse>(create);
  static LoginResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get errcode => $_getIZ(0);
  @$pb.TagNumber(1)
  set errcode($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrcode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrcode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errmsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set errmsg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrmsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrmsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get requestId => $_getSZ(2);
  @$pb.TagNumber(3)
  set requestId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestId() => clearField(3);

  @$pb.TagNumber(4)
  LoginResponse_Result get result => $_getN(3);
  @$pb.TagNumber(4)
  set result(LoginResponse_Result v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearResult() => clearField(4);
  @$pb.TagNumber(4)
  LoginResponse_Result ensureResult() => $_ensure(3);
}

class LogoutRequest extends $pb.GeneratedMessage {
  factory LogoutRequest({
    $core.String? userUuid,
    $core.String? userId,
    $core.String? corpId,
  }) {
    final $result = create();
    if (userUuid != null) {
      $result.userUuid = userUuid;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (corpId != null) {
      $result.corpId = corpId;
    }
    return $result;
  }
  LogoutRequest._() : super();
  factory LogoutRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogoutRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LogoutRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userUuid')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..aOS(3, _omitFieldNames ? '' : 'corpId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogoutRequest clone() => LogoutRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogoutRequest copyWith(void Function(LogoutRequest) updates) => super.copyWith((message) => updates(message as LogoutRequest)) as LogoutRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LogoutRequest create() => LogoutRequest._();
  LogoutRequest createEmptyInstance() => create();
  static $pb.PbList<LogoutRequest> createRepeated() => $pb.PbList<LogoutRequest>();
  @$core.pragma('dart2js:noInline')
  static LogoutRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogoutRequest>(create);
  static LogoutRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userUuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set userUuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get corpId => $_getSZ(2);
  @$pb.TagNumber(3)
  set corpId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCorpId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCorpId() => clearField(3);
}

class LogoutResponse extends $pb.GeneratedMessage {
  factory LogoutResponse({
    $core.int? errcode,
    $core.String? errmsg,
    $core.String? requestId,
    $core.bool? result,
  }) {
    final $result = create();
    if (errcode != null) {
      $result.errcode = errcode;
    }
    if (errmsg != null) {
      $result.errmsg = errmsg;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  LogoutResponse._() : super();
  factory LogoutResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogoutResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LogoutResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'errcode', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'errmsg')
    ..aOS(3, _omitFieldNames ? '' : 'requestId')
    ..aOB(4, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogoutResponse clone() => LogoutResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogoutResponse copyWith(void Function(LogoutResponse) updates) => super.copyWith((message) => updates(message as LogoutResponse)) as LogoutResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LogoutResponse create() => LogoutResponse._();
  LogoutResponse createEmptyInstance() => create();
  static $pb.PbList<LogoutResponse> createRepeated() => $pb.PbList<LogoutResponse>();
  @$core.pragma('dart2js:noInline')
  static LogoutResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogoutResponse>(create);
  static LogoutResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get errcode => $_getIZ(0);
  @$pb.TagNumber(1)
  set errcode($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrcode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrcode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errmsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set errmsg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrmsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrmsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get requestId => $_getSZ(2);
  @$pb.TagNumber(3)
  set requestId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestId() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get result => $_getBF(3);
  @$pb.TagNumber(4)
  set result($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearResult() => clearField(4);
}

class InfoRequest extends $pb.GeneratedMessage {
  factory InfoRequest({
    $core.String? userUuid,
    $core.String? userId,
    $core.String? corpId,
  }) {
    final $result = create();
    if (userUuid != null) {
      $result.userUuid = userUuid;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (corpId != null) {
      $result.corpId = corpId;
    }
    return $result;
  }
  InfoRequest._() : super();
  factory InfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userUuid')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..aOS(3, _omitFieldNames ? '' : 'corpId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InfoRequest clone() => InfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InfoRequest copyWith(void Function(InfoRequest) updates) => super.copyWith((message) => updates(message as InfoRequest)) as InfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InfoRequest create() => InfoRequest._();
  InfoRequest createEmptyInstance() => create();
  static $pb.PbList<InfoRequest> createRepeated() => $pb.PbList<InfoRequest>();
  @$core.pragma('dart2js:noInline')
  static InfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InfoRequest>(create);
  static InfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userUuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set userUuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get corpId => $_getSZ(2);
  @$pb.TagNumber(3)
  set corpId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCorpId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCorpId() => clearField(3);
}

class InfoResponse_Result_LoginInfo_ClientInfo extends $pb.GeneratedMessage {
  factory InfoResponse_Result_LoginInfo_ClientInfo({
    $core.String? deviceFingerprint,
    $core.int? clientType,
  }) {
    final $result = create();
    if (deviceFingerprint != null) {
      $result.deviceFingerprint = deviceFingerprint;
    }
    if (clientType != null) {
      $result.clientType = clientType;
    }
    return $result;
  }
  InfoResponse_Result_LoginInfo_ClientInfo._() : super();
  factory InfoResponse_Result_LoginInfo_ClientInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InfoResponse_Result_LoginInfo_ClientInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InfoResponse.Result.LoginInfo.ClientInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'deviceFingerprint')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'clientType', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InfoResponse_Result_LoginInfo_ClientInfo clone() => InfoResponse_Result_LoginInfo_ClientInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InfoResponse_Result_LoginInfo_ClientInfo copyWith(void Function(InfoResponse_Result_LoginInfo_ClientInfo) updates) => super.copyWith((message) => updates(message as InfoResponse_Result_LoginInfo_ClientInfo)) as InfoResponse_Result_LoginInfo_ClientInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InfoResponse_Result_LoginInfo_ClientInfo create() => InfoResponse_Result_LoginInfo_ClientInfo._();
  InfoResponse_Result_LoginInfo_ClientInfo createEmptyInstance() => create();
  static $pb.PbList<InfoResponse_Result_LoginInfo_ClientInfo> createRepeated() => $pb.PbList<InfoResponse_Result_LoginInfo_ClientInfo>();
  @$core.pragma('dart2js:noInline')
  static InfoResponse_Result_LoginInfo_ClientInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InfoResponse_Result_LoginInfo_ClientInfo>(create);
  static InfoResponse_Result_LoginInfo_ClientInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceFingerprint => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceFingerprint($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceFingerprint() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceFingerprint() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get clientType => $_getIZ(1);
  @$pb.TagNumber(2)
  set clientType($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClientType() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientType() => clearField(2);
}

class InfoResponse_Result_LoginInfo extends $pb.GeneratedMessage {
  factory InfoResponse_Result_LoginInfo({
    $core.Iterable<InfoResponse_Result_LoginInfo_ClientInfo>? clientInfo,
  }) {
    final $result = create();
    if (clientInfo != null) {
      $result.clientInfo.addAll(clientInfo);
    }
    return $result;
  }
  InfoResponse_Result_LoginInfo._() : super();
  factory InfoResponse_Result_LoginInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InfoResponse_Result_LoginInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InfoResponse.Result.LoginInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..pc<InfoResponse_Result_LoginInfo_ClientInfo>(1, _omitFieldNames ? '' : 'clientInfo', $pb.PbFieldType.PM, subBuilder: InfoResponse_Result_LoginInfo_ClientInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InfoResponse_Result_LoginInfo clone() => InfoResponse_Result_LoginInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InfoResponse_Result_LoginInfo copyWith(void Function(InfoResponse_Result_LoginInfo) updates) => super.copyWith((message) => updates(message as InfoResponse_Result_LoginInfo)) as InfoResponse_Result_LoginInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InfoResponse_Result_LoginInfo create() => InfoResponse_Result_LoginInfo._();
  InfoResponse_Result_LoginInfo createEmptyInstance() => create();
  static $pb.PbList<InfoResponse_Result_LoginInfo> createRepeated() => $pb.PbList<InfoResponse_Result_LoginInfo>();
  @$core.pragma('dart2js:noInline')
  static InfoResponse_Result_LoginInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InfoResponse_Result_LoginInfo>(create);
  static InfoResponse_Result_LoginInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<InfoResponse_Result_LoginInfo_ClientInfo> get clientInfo => $_getList(0);
}

class InfoResponse_Result extends $pb.GeneratedMessage {
  factory InfoResponse_Result({
    $core.String? nickName,
    $core.String? email,
    $core.String? orgEmail,
    $core.String? mobile,
    $core.String? idcard,
    $core.String? corpName,
    $core.String? corpCreditCode,
    $core.String? departmentPath,
    $core.Iterable<$core.String>? roles,
    InfoResponse_Result_LoginInfo? loginInfo,
  }) {
    final $result = create();
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (email != null) {
      $result.email = email;
    }
    if (orgEmail != null) {
      $result.orgEmail = orgEmail;
    }
    if (mobile != null) {
      $result.mobile = mobile;
    }
    if (idcard != null) {
      $result.idcard = idcard;
    }
    if (corpName != null) {
      $result.corpName = corpName;
    }
    if (corpCreditCode != null) {
      $result.corpCreditCode = corpCreditCode;
    }
    if (departmentPath != null) {
      $result.departmentPath = departmentPath;
    }
    if (roles != null) {
      $result.roles.addAll(roles);
    }
    if (loginInfo != null) {
      $result.loginInfo = loginInfo;
    }
    return $result;
  }
  InfoResponse_Result._() : super();
  factory InfoResponse_Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InfoResponse_Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InfoResponse.Result', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nickName')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'orgEmail')
    ..aOS(4, _omitFieldNames ? '' : 'mobile')
    ..aOS(5, _omitFieldNames ? '' : 'idcard')
    ..aOS(6, _omitFieldNames ? '' : 'corpName')
    ..aOS(7, _omitFieldNames ? '' : 'corpCreditCode')
    ..aOS(8, _omitFieldNames ? '' : 'departmentPath')
    ..pPS(9, _omitFieldNames ? '' : 'roles')
    ..aOM<InfoResponse_Result_LoginInfo>(10, _omitFieldNames ? '' : 'loginInfo', subBuilder: InfoResponse_Result_LoginInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InfoResponse_Result clone() => InfoResponse_Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InfoResponse_Result copyWith(void Function(InfoResponse_Result) updates) => super.copyWith((message) => updates(message as InfoResponse_Result)) as InfoResponse_Result;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InfoResponse_Result create() => InfoResponse_Result._();
  InfoResponse_Result createEmptyInstance() => create();
  static $pb.PbList<InfoResponse_Result> createRepeated() => $pb.PbList<InfoResponse_Result>();
  @$core.pragma('dart2js:noInline')
  static InfoResponse_Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InfoResponse_Result>(create);
  static InfoResponse_Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nickName => $_getSZ(0);
  @$pb.TagNumber(1)
  set nickName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNickName() => $_has(0);
  @$pb.TagNumber(1)
  void clearNickName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get orgEmail => $_getSZ(2);
  @$pb.TagNumber(3)
  set orgEmail($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrgEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrgEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get mobile => $_getSZ(3);
  @$pb.TagNumber(4)
  set mobile($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMobile() => $_has(3);
  @$pb.TagNumber(4)
  void clearMobile() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get idcard => $_getSZ(4);
  @$pb.TagNumber(5)
  set idcard($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIdcard() => $_has(4);
  @$pb.TagNumber(5)
  void clearIdcard() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get corpName => $_getSZ(5);
  @$pb.TagNumber(6)
  set corpName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCorpName() => $_has(5);
  @$pb.TagNumber(6)
  void clearCorpName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get corpCreditCode => $_getSZ(6);
  @$pb.TagNumber(7)
  set corpCreditCode($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCorpCreditCode() => $_has(6);
  @$pb.TagNumber(7)
  void clearCorpCreditCode() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get departmentPath => $_getSZ(7);
  @$pb.TagNumber(8)
  set departmentPath($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDepartmentPath() => $_has(7);
  @$pb.TagNumber(8)
  void clearDepartmentPath() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.String> get roles => $_getList(8);

  @$pb.TagNumber(10)
  InfoResponse_Result_LoginInfo get loginInfo => $_getN(9);
  @$pb.TagNumber(10)
  set loginInfo(InfoResponse_Result_LoginInfo v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLoginInfo() => $_has(9);
  @$pb.TagNumber(10)
  void clearLoginInfo() => clearField(10);
  @$pb.TagNumber(10)
  InfoResponse_Result_LoginInfo ensureLoginInfo() => $_ensure(9);
}

class InfoResponse extends $pb.GeneratedMessage {
  factory InfoResponse({
    $core.int? errcode,
    $core.String? errmsg,
    $core.String? requestId,
    InfoResponse_Result? result,
  }) {
    final $result = create();
    if (errcode != null) {
      $result.errcode = errcode;
    }
    if (errmsg != null) {
      $result.errmsg = errmsg;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  InfoResponse._() : super();
  factory InfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'errcode', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'errmsg')
    ..aOS(3, _omitFieldNames ? '' : 'requestId')
    ..aOM<InfoResponse_Result>(4, _omitFieldNames ? '' : 'result', subBuilder: InfoResponse_Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InfoResponse clone() => InfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InfoResponse copyWith(void Function(InfoResponse) updates) => super.copyWith((message) => updates(message as InfoResponse)) as InfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InfoResponse create() => InfoResponse._();
  InfoResponse createEmptyInstance() => create();
  static $pb.PbList<InfoResponse> createRepeated() => $pb.PbList<InfoResponse>();
  @$core.pragma('dart2js:noInline')
  static InfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InfoResponse>(create);
  static InfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get errcode => $_getIZ(0);
  @$pb.TagNumber(1)
  set errcode($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrcode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrcode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errmsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set errmsg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrmsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrmsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get requestId => $_getSZ(2);
  @$pb.TagNumber(3)
  set requestId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestId() => clearField(3);

  @$pb.TagNumber(4)
  InfoResponse_Result get result => $_getN(3);
  @$pb.TagNumber(4)
  set result(InfoResponse_Result v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearResult() => clearField(4);
  @$pb.TagNumber(4)
  InfoResponse_Result ensureResult() => $_ensure(3);
}

class AccountRequest extends $pb.GeneratedMessage {
  factory AccountRequest({
    $core.String? mobile,
    $core.String? email,
    $core.String? password,
    $core.String? captcha,
    $core.String? captchaId,
  }) {
    final $result = create();
    if (mobile != null) {
      $result.mobile = mobile;
    }
    if (email != null) {
      $result.email = email;
    }
    if (password != null) {
      $result.password = password;
    }
    if (captcha != null) {
      $result.captcha = captcha;
    }
    if (captchaId != null) {
      $result.captchaId = captchaId;
    }
    return $result;
  }
  AccountRequest._() : super();
  factory AccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mobile')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'password')
    ..aOS(4, _omitFieldNames ? '' : 'captcha')
    ..aOS(5, _omitFieldNames ? '' : 'captchaId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountRequest clone() => AccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountRequest copyWith(void Function(AccountRequest) updates) => super.copyWith((message) => updates(message as AccountRequest)) as AccountRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountRequest create() => AccountRequest._();
  AccountRequest createEmptyInstance() => create();
  static $pb.PbList<AccountRequest> createRepeated() => $pb.PbList<AccountRequest>();
  @$core.pragma('dart2js:noInline')
  static AccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountRequest>(create);
  static AccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mobile => $_getSZ(0);
  @$pb.TagNumber(1)
  set mobile($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMobile() => $_has(0);
  @$pb.TagNumber(1)
  void clearMobile() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get captcha => $_getSZ(3);
  @$pb.TagNumber(4)
  set captcha($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCaptcha() => $_has(3);
  @$pb.TagNumber(4)
  void clearCaptcha() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get captchaId => $_getSZ(4);
  @$pb.TagNumber(5)
  set captchaId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCaptchaId() => $_has(4);
  @$pb.TagNumber(5)
  void clearCaptchaId() => clearField(5);
}

class SMSAccountRequest extends $pb.GeneratedMessage {
  factory SMSAccountRequest({
    $core.String? mobile,
    $core.String? code,
    $core.String? captcha,
    $core.String? captchaId,
  }) {
    final $result = create();
    if (mobile != null) {
      $result.mobile = mobile;
    }
    if (code != null) {
      $result.code = code;
    }
    if (captcha != null) {
      $result.captcha = captcha;
    }
    if (captchaId != null) {
      $result.captchaId = captchaId;
    }
    return $result;
  }
  SMSAccountRequest._() : super();
  factory SMSAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SMSAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SMSAccountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mobile')
    ..aOS(3, _omitFieldNames ? '' : 'code')
    ..aOS(4, _omitFieldNames ? '' : 'captcha')
    ..aOS(5, _omitFieldNames ? '' : 'captchaId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SMSAccountRequest clone() => SMSAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SMSAccountRequest copyWith(void Function(SMSAccountRequest) updates) => super.copyWith((message) => updates(message as SMSAccountRequest)) as SMSAccountRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SMSAccountRequest create() => SMSAccountRequest._();
  SMSAccountRequest createEmptyInstance() => create();
  static $pb.PbList<SMSAccountRequest> createRepeated() => $pb.PbList<SMSAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static SMSAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SMSAccountRequest>(create);
  static SMSAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mobile => $_getSZ(0);
  @$pb.TagNumber(1)
  set mobile($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMobile() => $_has(0);
  @$pb.TagNumber(1)
  void clearMobile() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(3)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(3)
  void clearCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get captcha => $_getSZ(2);
  @$pb.TagNumber(4)
  set captcha($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasCaptcha() => $_has(2);
  @$pb.TagNumber(4)
  void clearCaptcha() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get captchaId => $_getSZ(3);
  @$pb.TagNumber(5)
  set captchaId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasCaptchaId() => $_has(3);
  @$pb.TagNumber(5)
  void clearCaptchaId() => clearField(5);
}

class AccountResponse_Result_List extends $pb.GeneratedMessage {
  factory AccountResponse_Result_List({
    $core.String? userId,
    $core.String? corpId,
    $core.String? corpName,
    $core.String? nickName,
    $core.String? corpLogoUrl,
    $core.String? userUuid,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (corpId != null) {
      $result.corpId = corpId;
    }
    if (corpName != null) {
      $result.corpName = corpName;
    }
    if (nickName != null) {
      $result.nickName = nickName;
    }
    if (corpLogoUrl != null) {
      $result.corpLogoUrl = corpLogoUrl;
    }
    if (userUuid != null) {
      $result.userUuid = userUuid;
    }
    return $result;
  }
  AccountResponse_Result_List._() : super();
  factory AccountResponse_Result_List.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountResponse_Result_List.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccountResponse.Result.List', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'corpId')
    ..aOS(3, _omitFieldNames ? '' : 'corpName')
    ..aOS(4, _omitFieldNames ? '' : 'nickName')
    ..aOS(5, _omitFieldNames ? '' : 'corpLogoUrl')
    ..aOS(6, _omitFieldNames ? '' : 'userUuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountResponse_Result_List clone() => AccountResponse_Result_List()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountResponse_Result_List copyWith(void Function(AccountResponse_Result_List) updates) => super.copyWith((message) => updates(message as AccountResponse_Result_List)) as AccountResponse_Result_List;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountResponse_Result_List create() => AccountResponse_Result_List._();
  AccountResponse_Result_List createEmptyInstance() => create();
  static $pb.PbList<AccountResponse_Result_List> createRepeated() => $pb.PbList<AccountResponse_Result_List>();
  @$core.pragma('dart2js:noInline')
  static AccountResponse_Result_List getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountResponse_Result_List>(create);
  static AccountResponse_Result_List? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get corpId => $_getSZ(1);
  @$pb.TagNumber(2)
  set corpId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCorpId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCorpId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get corpName => $_getSZ(2);
  @$pb.TagNumber(3)
  set corpName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCorpName() => $_has(2);
  @$pb.TagNumber(3)
  void clearCorpName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get nickName => $_getSZ(3);
  @$pb.TagNumber(4)
  set nickName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNickName() => $_has(3);
  @$pb.TagNumber(4)
  void clearNickName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get corpLogoUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set corpLogoUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCorpLogoUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearCorpLogoUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get userUuid => $_getSZ(5);
  @$pb.TagNumber(6)
  set userUuid($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserUuid() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserUuid() => clearField(6);
}

class AccountResponse_Result extends $pb.GeneratedMessage {
  factory AccountResponse_Result({
    $core.Iterable<AccountResponse_Result_List>? useridList,
    $core.String? accessCode,
  }) {
    final $result = create();
    if (useridList != null) {
      $result.useridList.addAll(useridList);
    }
    if (accessCode != null) {
      $result.accessCode = accessCode;
    }
    return $result;
  }
  AccountResponse_Result._() : super();
  factory AccountResponse_Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountResponse_Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccountResponse.Result', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..pc<AccountResponse_Result_List>(1, _omitFieldNames ? '' : 'useridList', $pb.PbFieldType.PM, subBuilder: AccountResponse_Result_List.create)
    ..aOS(3, _omitFieldNames ? '' : 'accessCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountResponse_Result clone() => AccountResponse_Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountResponse_Result copyWith(void Function(AccountResponse_Result) updates) => super.copyWith((message) => updates(message as AccountResponse_Result)) as AccountResponse_Result;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountResponse_Result create() => AccountResponse_Result._();
  AccountResponse_Result createEmptyInstance() => create();
  static $pb.PbList<AccountResponse_Result> createRepeated() => $pb.PbList<AccountResponse_Result>();
  @$core.pragma('dart2js:noInline')
  static AccountResponse_Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountResponse_Result>(create);
  static AccountResponse_Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AccountResponse_Result_List> get useridList => $_getList(0);

  /// string user_uuid = 2;
  @$pb.TagNumber(3)
  $core.String get accessCode => $_getSZ(1);
  @$pb.TagNumber(3)
  set accessCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccessCode() => $_has(1);
  @$pb.TagNumber(3)
  void clearAccessCode() => clearField(3);
}

class AccountResponse extends $pb.GeneratedMessage {
  factory AccountResponse({
    $core.int? errcode,
    $core.String? errmsg,
    $core.String? requestId,
    AccountResponse_Result? result,
  }) {
    final $result = create();
    if (errcode != null) {
      $result.errcode = errcode;
    }
    if (errmsg != null) {
      $result.errmsg = errmsg;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  AccountResponse._() : super();
  factory AccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'errcode', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'errmsg')
    ..aOS(3, _omitFieldNames ? '' : 'requestId')
    ..aOM<AccountResponse_Result>(4, _omitFieldNames ? '' : 'result', subBuilder: AccountResponse_Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountResponse clone() => AccountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountResponse copyWith(void Function(AccountResponse) updates) => super.copyWith((message) => updates(message as AccountResponse)) as AccountResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountResponse create() => AccountResponse._();
  AccountResponse createEmptyInstance() => create();
  static $pb.PbList<AccountResponse> createRepeated() => $pb.PbList<AccountResponse>();
  @$core.pragma('dart2js:noInline')
  static AccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountResponse>(create);
  static AccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get errcode => $_getIZ(0);
  @$pb.TagNumber(1)
  set errcode($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrcode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrcode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errmsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set errmsg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrmsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrmsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get requestId => $_getSZ(2);
  @$pb.TagNumber(3)
  set requestId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestId() => clearField(3);

  @$pb.TagNumber(4)
  AccountResponse_Result get result => $_getN(3);
  @$pb.TagNumber(4)
  set result(AccountResponse_Result v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearResult() => clearField(4);
  @$pb.TagNumber(4)
  AccountResponse_Result ensureResult() => $_ensure(3);
}

class VerifyCaptchaRequest extends $pb.GeneratedMessage {
  factory VerifyCaptchaRequest({
    $core.String? captchaId,
    $core.String? captcha,
  }) {
    final $result = create();
    if (captchaId != null) {
      $result.captchaId = captchaId;
    }
    if (captcha != null) {
      $result.captcha = captcha;
    }
    return $result;
  }
  VerifyCaptchaRequest._() : super();
  factory VerifyCaptchaRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyCaptchaRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyCaptchaRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'captchaId')
    ..aOS(2, _omitFieldNames ? '' : 'captcha')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyCaptchaRequest clone() => VerifyCaptchaRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyCaptchaRequest copyWith(void Function(VerifyCaptchaRequest) updates) => super.copyWith((message) => updates(message as VerifyCaptchaRequest)) as VerifyCaptchaRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyCaptchaRequest create() => VerifyCaptchaRequest._();
  VerifyCaptchaRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyCaptchaRequest> createRepeated() => $pb.PbList<VerifyCaptchaRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyCaptchaRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyCaptchaRequest>(create);
  static VerifyCaptchaRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get captchaId => $_getSZ(0);
  @$pb.TagNumber(1)
  set captchaId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCaptchaId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCaptchaId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get captcha => $_getSZ(1);
  @$pb.TagNumber(2)
  set captcha($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCaptcha() => $_has(1);
  @$pb.TagNumber(2)
  void clearCaptcha() => clearField(2);
}

class VerifyCaptchaResponse_Result extends $pb.GeneratedMessage {
  factory VerifyCaptchaResponse_Result({
    $core.bool? isSuccess,
  }) {
    final $result = create();
    if (isSuccess != null) {
      $result.isSuccess = isSuccess;
    }
    return $result;
  }
  VerifyCaptchaResponse_Result._() : super();
  factory VerifyCaptchaResponse_Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyCaptchaResponse_Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyCaptchaResponse.Result', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isSuccess')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyCaptchaResponse_Result clone() => VerifyCaptchaResponse_Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyCaptchaResponse_Result copyWith(void Function(VerifyCaptchaResponse_Result) updates) => super.copyWith((message) => updates(message as VerifyCaptchaResponse_Result)) as VerifyCaptchaResponse_Result;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyCaptchaResponse_Result create() => VerifyCaptchaResponse_Result._();
  VerifyCaptchaResponse_Result createEmptyInstance() => create();
  static $pb.PbList<VerifyCaptchaResponse_Result> createRepeated() => $pb.PbList<VerifyCaptchaResponse_Result>();
  @$core.pragma('dart2js:noInline')
  static VerifyCaptchaResponse_Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyCaptchaResponse_Result>(create);
  static VerifyCaptchaResponse_Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isSuccess => $_getBF(0);
  @$pb.TagNumber(1)
  set isSuccess($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSuccess() => clearField(1);
}

class VerifyCaptchaResponse extends $pb.GeneratedMessage {
  factory VerifyCaptchaResponse({
    $core.int? errcode,
    $core.String? errmsg,
    $core.String? requestId,
    VerifyCaptchaResponse_Result? result,
  }) {
    final $result = create();
    if (errcode != null) {
      $result.errcode = errcode;
    }
    if (errmsg != null) {
      $result.errmsg = errmsg;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  VerifyCaptchaResponse._() : super();
  factory VerifyCaptchaResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyCaptchaResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyCaptchaResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'errcode', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'errmsg')
    ..aOS(3, _omitFieldNames ? '' : 'requestId')
    ..aOM<VerifyCaptchaResponse_Result>(4, _omitFieldNames ? '' : 'result', subBuilder: VerifyCaptchaResponse_Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyCaptchaResponse clone() => VerifyCaptchaResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyCaptchaResponse copyWith(void Function(VerifyCaptchaResponse) updates) => super.copyWith((message) => updates(message as VerifyCaptchaResponse)) as VerifyCaptchaResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyCaptchaResponse create() => VerifyCaptchaResponse._();
  VerifyCaptchaResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyCaptchaResponse> createRepeated() => $pb.PbList<VerifyCaptchaResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyCaptchaResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyCaptchaResponse>(create);
  static VerifyCaptchaResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get errcode => $_getIZ(0);
  @$pb.TagNumber(1)
  set errcode($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrcode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrcode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errmsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set errmsg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrmsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrmsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get requestId => $_getSZ(2);
  @$pb.TagNumber(3)
  set requestId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestId() => clearField(3);

  @$pb.TagNumber(4)
  VerifyCaptchaResponse_Result get result => $_getN(3);
  @$pb.TagNumber(4)
  set result(VerifyCaptchaResponse_Result v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearResult() => clearField(4);
  @$pb.TagNumber(4)
  VerifyCaptchaResponse_Result ensureResult() => $_ensure(3);
}

class SMSCaptchaRequest extends $pb.GeneratedMessage {
  factory SMSCaptchaRequest({
    $core.String? mobile,
  }) {
    final $result = create();
    if (mobile != null) {
      $result.mobile = mobile;
    }
    return $result;
  }
  SMSCaptchaRequest._() : super();
  factory SMSCaptchaRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SMSCaptchaRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SMSCaptchaRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mobile')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SMSCaptchaRequest clone() => SMSCaptchaRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SMSCaptchaRequest copyWith(void Function(SMSCaptchaRequest) updates) => super.copyWith((message) => updates(message as SMSCaptchaRequest)) as SMSCaptchaRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SMSCaptchaRequest create() => SMSCaptchaRequest._();
  SMSCaptchaRequest createEmptyInstance() => create();
  static $pb.PbList<SMSCaptchaRequest> createRepeated() => $pb.PbList<SMSCaptchaRequest>();
  @$core.pragma('dart2js:noInline')
  static SMSCaptchaRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SMSCaptchaRequest>(create);
  static SMSCaptchaRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mobile => $_getSZ(0);
  @$pb.TagNumber(1)
  set mobile($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMobile() => $_has(0);
  @$pb.TagNumber(1)
  void clearMobile() => clearField(1);
}

class CaptchaResponse_Result extends $pb.GeneratedMessage {
  factory CaptchaResponse_Result({
    $core.String? captchaId,
    $core.String? picPath,
  }) {
    final $result = create();
    if (captchaId != null) {
      $result.captchaId = captchaId;
    }
    if (picPath != null) {
      $result.picPath = picPath;
    }
    return $result;
  }
  CaptchaResponse_Result._() : super();
  factory CaptchaResponse_Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CaptchaResponse_Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CaptchaResponse.Result', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'captchaId')
    ..aOS(2, _omitFieldNames ? '' : 'picPath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CaptchaResponse_Result clone() => CaptchaResponse_Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CaptchaResponse_Result copyWith(void Function(CaptchaResponse_Result) updates) => super.copyWith((message) => updates(message as CaptchaResponse_Result)) as CaptchaResponse_Result;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CaptchaResponse_Result create() => CaptchaResponse_Result._();
  CaptchaResponse_Result createEmptyInstance() => create();
  static $pb.PbList<CaptchaResponse_Result> createRepeated() => $pb.PbList<CaptchaResponse_Result>();
  @$core.pragma('dart2js:noInline')
  static CaptchaResponse_Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CaptchaResponse_Result>(create);
  static CaptchaResponse_Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get captchaId => $_getSZ(0);
  @$pb.TagNumber(1)
  set captchaId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCaptchaId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCaptchaId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get picPath => $_getSZ(1);
  @$pb.TagNumber(2)
  set picPath($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPicPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPicPath() => clearField(2);
}

class CaptchaResponse extends $pb.GeneratedMessage {
  factory CaptchaResponse({
    $core.int? errcode,
    $core.String? errmsg,
    $core.String? requestId,
    CaptchaResponse_Result? result,
  }) {
    final $result = create();
    if (errcode != null) {
      $result.errcode = errcode;
    }
    if (errmsg != null) {
      $result.errmsg = errmsg;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  CaptchaResponse._() : super();
  factory CaptchaResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CaptchaResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CaptchaResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'errcode', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'errmsg')
    ..aOS(3, _omitFieldNames ? '' : 'requestId')
    ..aOM<CaptchaResponse_Result>(4, _omitFieldNames ? '' : 'result', subBuilder: CaptchaResponse_Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CaptchaResponse clone() => CaptchaResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CaptchaResponse copyWith(void Function(CaptchaResponse) updates) => super.copyWith((message) => updates(message as CaptchaResponse)) as CaptchaResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CaptchaResponse create() => CaptchaResponse._();
  CaptchaResponse createEmptyInstance() => create();
  static $pb.PbList<CaptchaResponse> createRepeated() => $pb.PbList<CaptchaResponse>();
  @$core.pragma('dart2js:noInline')
  static CaptchaResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CaptchaResponse>(create);
  static CaptchaResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get errcode => $_getIZ(0);
  @$pb.TagNumber(1)
  set errcode($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrcode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrcode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errmsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set errmsg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrmsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrmsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get requestId => $_getSZ(2);
  @$pb.TagNumber(3)
  set requestId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestId() => clearField(3);

  @$pb.TagNumber(4)
  CaptchaResponse_Result get result => $_getN(3);
  @$pb.TagNumber(4)
  set result(CaptchaResponse_Result v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearResult() => clearField(4);
  @$pb.TagNumber(4)
  CaptchaResponse_Result ensureResult() => $_ensure(3);
}

class TotalOnlineUserResponse_Result extends $pb.GeneratedMessage {
  factory TotalOnlineUserResponse_Result({
    $core.int? totalOnlineUsers,
  }) {
    final $result = create();
    if (totalOnlineUsers != null) {
      $result.totalOnlineUsers = totalOnlineUsers;
    }
    return $result;
  }
  TotalOnlineUserResponse_Result._() : super();
  factory TotalOnlineUserResponse_Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TotalOnlineUserResponse_Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TotalOnlineUserResponse.Result', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'totalOnlineUsers', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TotalOnlineUserResponse_Result clone() => TotalOnlineUserResponse_Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TotalOnlineUserResponse_Result copyWith(void Function(TotalOnlineUserResponse_Result) updates) => super.copyWith((message) => updates(message as TotalOnlineUserResponse_Result)) as TotalOnlineUserResponse_Result;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TotalOnlineUserResponse_Result create() => TotalOnlineUserResponse_Result._();
  TotalOnlineUserResponse_Result createEmptyInstance() => create();
  static $pb.PbList<TotalOnlineUserResponse_Result> createRepeated() => $pb.PbList<TotalOnlineUserResponse_Result>();
  @$core.pragma('dart2js:noInline')
  static TotalOnlineUserResponse_Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TotalOnlineUserResponse_Result>(create);
  static TotalOnlineUserResponse_Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalOnlineUsers => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalOnlineUsers($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalOnlineUsers() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalOnlineUsers() => clearField(1);
}

class TotalOnlineUserResponse extends $pb.GeneratedMessage {
  factory TotalOnlineUserResponse({
    $core.int? errcode,
    $core.String? errmsg,
    $core.String? requestId,
    TotalOnlineUserResponse_Result? result,
  }) {
    final $result = create();
    if (errcode != null) {
      $result.errcode = errcode;
    }
    if (errmsg != null) {
      $result.errmsg = errmsg;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  TotalOnlineUserResponse._() : super();
  factory TotalOnlineUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TotalOnlineUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TotalOnlineUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admin.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'errcode', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'errmsg')
    ..aOS(3, _omitFieldNames ? '' : 'requestId')
    ..aOM<TotalOnlineUserResponse_Result>(4, _omitFieldNames ? '' : 'result', subBuilder: TotalOnlineUserResponse_Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TotalOnlineUserResponse clone() => TotalOnlineUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TotalOnlineUserResponse copyWith(void Function(TotalOnlineUserResponse) updates) => super.copyWith((message) => updates(message as TotalOnlineUserResponse)) as TotalOnlineUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TotalOnlineUserResponse create() => TotalOnlineUserResponse._();
  TotalOnlineUserResponse createEmptyInstance() => create();
  static $pb.PbList<TotalOnlineUserResponse> createRepeated() => $pb.PbList<TotalOnlineUserResponse>();
  @$core.pragma('dart2js:noInline')
  static TotalOnlineUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TotalOnlineUserResponse>(create);
  static TotalOnlineUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get errcode => $_getIZ(0);
  @$pb.TagNumber(1)
  set errcode($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrcode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrcode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errmsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set errmsg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrmsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrmsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get requestId => $_getSZ(2);
  @$pb.TagNumber(3)
  set requestId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestId() => clearField(3);

  @$pb.TagNumber(4)
  TotalOnlineUserResponse_Result get result => $_getN(3);
  @$pb.TagNumber(4)
  set result(TotalOnlineUserResponse_Result v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearResult() => clearField(4);
  @$pb.TagNumber(4)
  TotalOnlineUserResponse_Result ensureResult() => $_ensure(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
