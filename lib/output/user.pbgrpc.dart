//
//  Generated code. Do not modify.
//  source: user.proto
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

import 'user.pb.dart' as $0;

export 'user.pb.dart';

@$pb.GrpcServiceName('api.user.v1.JSQ_MEMBER')
class JSQ_MEMBERClient extends $grpc.Client {
  static final _$userList = $grpc.ClientMethod<$0.UserListReq, $0.UserListReply>(
      '/api.user.v1.JSQ_MEMBER/UserList',
      ($0.UserListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserListReply.fromBuffer(value));
  static final _$userRegister = $grpc.ClientMethod<$0.UserRegisterReq, $0.UserRegisterReply>(
      '/api.user.v1.JSQ_MEMBER/UserRegister',
      ($0.UserRegisterReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserRegisterReply.fromBuffer(value));
  static final _$userLogin = $grpc.ClientMethod<$0.UserLoginReq, $0.UserLoginReply>(
      '/api.user.v1.JSQ_MEMBER/UserLogin',
      ($0.UserLoginReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserLoginReply.fromBuffer(value));
  static final _$userLoginBySms = $grpc.ClientMethod<$0.UserLoginBySmsReq, $0.UserLoginReply>(
      '/api.user.v1.JSQ_MEMBER/UserLoginBySms',
      ($0.UserLoginBySmsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserLoginReply.fromBuffer(value));
  static final _$userInfo = $grpc.ClientMethod<$0.UserInfoReq, $0.UserInfoReply>(
      '/api.user.v1.JSQ_MEMBER/UserInfo',
      ($0.UserInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserInfoReply.fromBuffer(value));
  static final _$userStatusUpdate = $grpc.ClientMethod<$0.UserStatusUpdateReq, $0.UserStatusUpdateReply>(
      '/api.user.v1.JSQ_MEMBER/UserStatusUpdate',
      ($0.UserStatusUpdateReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserStatusUpdateReply.fromBuffer(value));

  JSQ_MEMBERClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserListReply> userList($0.UserListReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userList, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserRegisterReply> userRegister($0.UserRegisterReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userRegister, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserLoginReply> userLogin($0.UserLoginReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userLogin, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserLoginReply> userLoginBySms($0.UserLoginBySmsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userLoginBySms, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserInfoReply> userInfo($0.UserInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserStatusUpdateReply> userStatusUpdate($0.UserStatusUpdateReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userStatusUpdate, request, options: options);
  }
}

@$pb.GrpcServiceName('api.user.v1.JSQ_MEMBER')
abstract class JSQ_MEMBERServiceBase extends $grpc.Service {
  $core.String get $name => 'api.user.v1.JSQ_MEMBER';

  JSQ_MEMBERServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UserListReq, $0.UserListReply>(
        'UserList',
        userList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserListReq.fromBuffer(value),
        ($0.UserListReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserRegisterReq, $0.UserRegisterReply>(
        'UserRegister',
        userRegister_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserRegisterReq.fromBuffer(value),
        ($0.UserRegisterReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserLoginReq, $0.UserLoginReply>(
        'UserLogin',
        userLogin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserLoginReq.fromBuffer(value),
        ($0.UserLoginReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserLoginBySmsReq, $0.UserLoginReply>(
        'UserLoginBySms',
        userLoginBySms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserLoginBySmsReq.fromBuffer(value),
        ($0.UserLoginReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserInfoReq, $0.UserInfoReply>(
        'UserInfo',
        userInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserInfoReq.fromBuffer(value),
        ($0.UserInfoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserStatusUpdateReq, $0.UserStatusUpdateReply>(
        'UserStatusUpdate',
        userStatusUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserStatusUpdateReq.fromBuffer(value),
        ($0.UserStatusUpdateReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserListReply> userList_Pre($grpc.ServiceCall call, $async.Future<$0.UserListReq> request) async {
    return userList(call, await request);
  }

  $async.Future<$0.UserRegisterReply> userRegister_Pre($grpc.ServiceCall call, $async.Future<$0.UserRegisterReq> request) async {
    return userRegister(call, await request);
  }

  $async.Future<$0.UserLoginReply> userLogin_Pre($grpc.ServiceCall call, $async.Future<$0.UserLoginReq> request) async {
    return userLogin(call, await request);
  }

  $async.Future<$0.UserLoginReply> userLoginBySms_Pre($grpc.ServiceCall call, $async.Future<$0.UserLoginBySmsReq> request) async {
    return userLoginBySms(call, await request);
  }

  $async.Future<$0.UserInfoReply> userInfo_Pre($grpc.ServiceCall call, $async.Future<$0.UserInfoReq> request) async {
    return userInfo(call, await request);
  }

  $async.Future<$0.UserStatusUpdateReply> userStatusUpdate_Pre($grpc.ServiceCall call, $async.Future<$0.UserStatusUpdateReq> request) async {
    return userStatusUpdate(call, await request);
  }

  $async.Future<$0.UserListReply> userList($grpc.ServiceCall call, $0.UserListReq request);
  $async.Future<$0.UserRegisterReply> userRegister($grpc.ServiceCall call, $0.UserRegisterReq request);
  $async.Future<$0.UserLoginReply> userLogin($grpc.ServiceCall call, $0.UserLoginReq request);
  $async.Future<$0.UserLoginReply> userLoginBySms($grpc.ServiceCall call, $0.UserLoginBySmsReq request);
  $async.Future<$0.UserInfoReply> userInfo($grpc.ServiceCall call, $0.UserInfoReq request);
  $async.Future<$0.UserStatusUpdateReply> userStatusUpdate($grpc.ServiceCall call, $0.UserStatusUpdateReq request);
}
@$pb.GrpcServiceName('api.user.v1.JSQ_GUEST')
class JSQ_GUESTClient extends $grpc.Client {
  static final _$guestCheck = $grpc.ClientMethod<$0.GuestCheckReq, $0.GuestCheckReply>(
      '/api.user.v1.JSQ_GUEST/GuestCheck',
      ($0.GuestCheckReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GuestCheckReply.fromBuffer(value));

  JSQ_GUESTClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GuestCheckReply> guestCheck($0.GuestCheckReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$guestCheck, request, options: options);
  }
}

@$pb.GrpcServiceName('api.user.v1.JSQ_GUEST')
abstract class JSQ_GUESTServiceBase extends $grpc.Service {
  $core.String get $name => 'api.user.v1.JSQ_GUEST';

  JSQ_GUESTServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GuestCheckReq, $0.GuestCheckReply>(
        'GuestCheck',
        guestCheck_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GuestCheckReq.fromBuffer(value),
        ($0.GuestCheckReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.GuestCheckReply> guestCheck_Pre($grpc.ServiceCall call, $async.Future<$0.GuestCheckReq> request) async {
    return guestCheck(call, await request);
  }

  $async.Future<$0.GuestCheckReply> guestCheck($grpc.ServiceCall call, $0.GuestCheckReq request);
}
