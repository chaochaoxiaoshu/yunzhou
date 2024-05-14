//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pageDescriptor instead')
const Page$json = {
  '1': 'Page',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'page'},
    {'1': 'page_size', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'page_size'},
    {'1': 'total', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'total'},
    {'1': 'total_page', '3': 4, '4': 1, '5': 3, '8': {}, '10': 'total_page'},
  ],
};

/// Descriptor for `Page`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pageDescriptor = $convert.base64Decode(
    'CgRQYWdlEh8KBHBhZ2UYASABKANCC5JBCDIG6aG156CBUgRwYWdlEi8KCXBhZ2Vfc2l6ZRgCIA'
    'EoA0IRkkEOMgzmr4/pobXmlbDph49SCXBhZ2Vfc2l6ZRIhCgV0b3RhbBgDIAEoA0ILkkEIMgbm'
    'gLvmlbBSBXRvdGFsEi4KCnRvdGFsX3BhZ2UYBCABKANCDpJBCzIJ5oC76aG15pWwUgp0b3RhbF'
    '9wYWdl');

@$core.Deprecated('Use userInfoDescriptor instead')
const UserInfo$json = {
  '1': 'UserInfo',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'user_id'},
    {'1': 'memberId', '3': 3, '4': 1, '5': 3, '10': 'member_id'},
    {'1': 'mail', '3': 4, '4': 1, '5': 9, '10': 'mail'},
    {'1': 'mobile', '3': 5, '4': 1, '5': 9, '10': 'mobile'},
    {'1': 'username', '3': 6, '4': 1, '5': 9, '10': 'username'},
    {'1': 'avatar', '3': 7, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'invite', '3': 8, '4': 1, '5': 9, '10': 'invite'},
    {'1': 'invite_code', '3': 9, '4': 1, '5': 9, '10': 'invite_code'},
    {'1': 'is_vip', '3': 10, '4': 1, '5': 8, '10': 'is_vip'},
    {'1': 'vip_level', '3': 11, '4': 1, '5': 3, '10': 'vip_level'},
    {'1': 'vip_expires_in', '3': 12, '4': 1, '5': 3, '10': 'vip_expires_in'},
    {'1': 'balance', '3': 13, '4': 1, '5': 3, '10': 'balance'},
    {'1': 'balance_expires_in', '3': 14, '4': 1, '5': 3, '10': 'balance_expires_in'},
    {'1': 'line', '3': 15, '4': 1, '5': 9, '10': 'line'},
    {'1': 'created_at', '3': 16, '4': 1, '5': 9, '10': 'created_at'},
    {'1': 'corp_id', '3': 17, '4': 1, '5': 9, '10': 'corp_id'},
    {'1': 'google_id', '3': 18, '4': 1, '5': 9, '10': 'google_id'},
    {'1': 'wechat_id', '3': 19, '4': 1, '5': 9, '10': 'wechat_id'},
    {'1': 'enabled', '3': 20, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'account_status', '3': 21, '4': 1, '5': 8, '10': 'account_status'},
    {'1': 'used_time', '3': 22, '4': 1, '5': 3, '10': 'used_time'},
    {'1': 'total_time', '3': 23, '4': 1, '5': 3, '10': 'total_time'},
    {'1': 'total_traffic', '3': 24, '4': 1, '5': 3, '10': 'total_traffic'},
    {'1': 'used_traffic', '3': 25, '4': 1, '5': 3, '10': 'used_traffic'},
  ],
};

/// Descriptor for `UserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoDescriptor = $convert.base64Decode(
    'CghVc2VySW5mbxISCgR1dWlkGAEgASgJUgR1dWlkEhcKBnVzZXJJZBgCIAEoCVIHdXNlcl9pZB'
    'IbCghtZW1iZXJJZBgDIAEoA1IJbWVtYmVyX2lkEhIKBG1haWwYBCABKAlSBG1haWwSFgoGbW9i'
    'aWxlGAUgASgJUgZtb2JpbGUSGgoIdXNlcm5hbWUYBiABKAlSCHVzZXJuYW1lEhYKBmF2YXRhch'
    'gHIAEoCVIGYXZhdGFyEhYKBmludml0ZRgIIAEoCVIGaW52aXRlEiAKC2ludml0ZV9jb2RlGAkg'
    'ASgJUgtpbnZpdGVfY29kZRIWCgZpc192aXAYCiABKAhSBmlzX3ZpcBIcCgl2aXBfbGV2ZWwYCy'
    'ABKANSCXZpcF9sZXZlbBImCg52aXBfZXhwaXJlc19pbhgMIAEoA1IOdmlwX2V4cGlyZXNfaW4S'
    'GAoHYmFsYW5jZRgNIAEoA1IHYmFsYW5jZRIuChJiYWxhbmNlX2V4cGlyZXNfaW4YDiABKANSEm'
    'JhbGFuY2VfZXhwaXJlc19pbhISCgRsaW5lGA8gASgJUgRsaW5lEh4KCmNyZWF0ZWRfYXQYECAB'
    'KAlSCmNyZWF0ZWRfYXQSGAoHY29ycF9pZBgRIAEoCVIHY29ycF9pZBIcCglnb29nbGVfaWQYEi'
    'ABKAlSCWdvb2dsZV9pZBIcCgl3ZWNoYXRfaWQYEyABKAlSCXdlY2hhdF9pZBIYCgdlbmFibGVk'
    'GBQgASgIUgdlbmFibGVkEiYKDmFjY291bnRfc3RhdHVzGBUgASgIUg5hY2NvdW50X3N0YXR1cx'
    'IcCgl1c2VkX3RpbWUYFiABKANSCXVzZWRfdGltZRIeCgp0b3RhbF90aW1lGBcgASgDUgp0b3Rh'
    'bF90aW1lEiQKDXRvdGFsX3RyYWZmaWMYGCABKANSDXRvdGFsX3RyYWZmaWMSIgoMdXNlZF90cm'
    'FmZmljGBkgASgDUgx1c2VkX3RyYWZmaWM=');

@$core.Deprecated('Use userListReqDescriptor instead')
const UserListReq$json = {
  '1': 'UserListReq',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'page'},
    {'1': 'page_size', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'page_size'},
  ],
};

/// Descriptor for `UserListReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userListReqDescriptor = $convert.base64Decode(
    'CgtVc2VyTGlzdFJlcRIfCgRwYWdlGAEgASgDQguSQQgyBumhteeggVIEcGFnZRIvCglwYWdlX3'
    'NpemUYAiABKANCEZJBDjIM5q+P6aG15pWw6YePUglwYWdlX3NpemU=');

@$core.Deprecated('Use userListReplyDescriptor instead')
const UserListReply$json = {
  '1': 'UserListReply',
  '2': [
    {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.api.user.v1.UserInfo', '10': 'data'},
    {'1': 'page', '3': 2, '4': 1, '5': 11, '6': '.api.user.v1.Page', '10': 'page'},
  ],
};

/// Descriptor for `UserListReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userListReplyDescriptor = $convert.base64Decode(
    'Cg1Vc2VyTGlzdFJlcGx5EikKBGRhdGEYASADKAsyFS5hcGkudXNlci52MS5Vc2VySW5mb1IEZG'
    'F0YRIlCgRwYWdlGAIgASgLMhEuYXBpLnVzZXIudjEuUGFnZVIEcGFnZQ==');

@$core.Deprecated('Use userRegisterReqDescriptor instead')
const UserRegisterReq$json = {
  '1': 'UserRegisterReq',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'account'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'password'},
    {'1': 'username', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'username'},
    {'1': 'invite', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'invite'},
    {'1': 'captcha', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'captcha'},
    {'1': 'captcha_id', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'captcha_id'},
    {'1': 'clientInfo', '3': 7, '4': 1, '5': 11, '6': '.api.user.v1.ClientInfo', '8': {}, '10': 'client_info'},
  ],
};

/// Descriptor for `UserRegisterReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRegisterReqDescriptor = $convert.base64Decode(
    'Cg9Vc2VyUmVnaXN0ZXJSZXESKQoHYWNjb3VudBgBIAEoCUIPkkEIMgbotKblj7fiQQECUgdhY2'
    'NvdW50EisKCHBhc3N3b3JkGAIgASgJQg+SQQgyBuWvhueggeJBAQJSCHBhc3N3b3JkEi4KCHVz'
    'ZXJuYW1lGAMgASgJQhKSQQsyCeeUqOaIt+WQjeJBAQJSCHVzZXJuYW1lEiYKBmludml0ZRgEIA'
    'EoCUIOkkELMgnpgoDor7fnoIFSBmludml0ZRIoCgdjYXB0Y2hhGAUgASgJQg6SQQsyCemqjOiv'
    'geeggVIHY2FwdGNoYRIwCgpjYXB0Y2hhX2lkGAYgASgJQhCSQQ0yC+mqjOivgeeggWlkUgpjYX'
    'B0Y2hhX2lkEksKCmNsaWVudEluZm8YByABKAsyFy5hcGkudXNlci52MS5DbGllbnRJbmZvQhGS'
    'QQ4yDOiuvuWkh+S/oeaBr1ILY2xpZW50X2luZm8=');

@$core.Deprecated('Use userRegisterReplyDescriptor instead')
const UserRegisterReply$json = {
  '1': 'UserRegisterReply',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'data', '3': 2, '4': 1, '5': 11, '6': '.api.user.v1.UserInfo', '10': 'data'},
  ],
};

/// Descriptor for `UserRegisterReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRegisterReplyDescriptor = $convert.base64Decode(
    'ChFVc2VyUmVnaXN0ZXJSZXBseRIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SKQoEZGF0YRgCIAEoCz'
    'IVLmFwaS51c2VyLnYxLlVzZXJJbmZvUgRkYXRh');

@$core.Deprecated('Use clientInfoDescriptor instead')
const ClientInfo$json = {
  '1': 'ClientInfo',
  '2': [
    {'1': 'clientType', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'client_type'},
    {'1': 'deviceFingerprint', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'device_fingerprint'},
    {'1': 'CPUArchitecture', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'cpu_architecture'},
    {'1': 'IPs', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'ips'},
    {'1': 'KernelType', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'kernel_type'},
    {'1': 'KernelVersion', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'kernel_vision'},
    {'1': 'ProductName', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'product_name'},
    {'1': 'UserHomeDirectory', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'user_home_directory'},
  ],
};

/// Descriptor for `ClientInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientInfoDescriptor = $convert.base64Decode(
    'CgpDbGllbnRJbmZvEjIKCmNsaWVudFR5cGUYASABKA1CEZJBDjIM6K6+5aSH57G75Z6LUgtjbG'
    'llbnRfdHlwZRJGChFkZXZpY2VGaW5nZXJwcmludBgCIAEoCUIXkkEUMhLnmbvpmYborr7lpIfm'
    'jIfnurlSEmRldmljZV9maW5nZXJwcmludBI5Cg9DUFVBcmNoaXRlY3R1cmUYAyABKAlCDpJBCz'
    'IJQ1BV5p625p6EUhBjcHVfYXJjaGl0ZWN0dXJlEisKA0lQcxgEIAEoCUIZkkEWMhTorr7lpIdJ'
    'UOWcsOWdgOWIl+ihqFIDaXBzEjIKCktlcm5lbFR5cGUYBSABKAlCEZJBDjIM5YaF5qC457G75Z'
    '6LUgtrZXJuZWxfdHlwZRI3Cg1LZXJuZWxWZXJzaW9uGAYgASgJQhGSQQ4yDOWGheaguOeJiOac'
    'rFINa2VybmVsX3Zpc2lvbhI6CgtQcm9kdWN0TmFtZRgHIAEoCUIXkkEUMhLmk43kvZzns7vnu5'
    '/lkI3np7BSDHByb2R1Y3RfbmFtZRJEChFVc2VySG9tZURpcmVjdG9yeRgIIAEoCUIUkkERMg/n'
    'lKjmiLfkuLvnm67lvZVSE3VzZXJfaG9tZV9kaXJlY3Rvcnk=');

@$core.Deprecated('Use userLoginReqDescriptor instead')
const UserLoginReq$json = {
  '1': 'UserLoginReq',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'account'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'password'},
    {'1': 'captcha', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'captcha'},
    {'1': 'captcha_id', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'captcha_id'},
    {'1': 'clientInfo', '3': 5, '4': 1, '5': 11, '6': '.api.user.v1.ClientInfo', '8': {}, '10': 'client_info'},
  ],
};

/// Descriptor for `UserLoginReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLoginReqDescriptor = $convert.base64Decode(
    'CgxVc2VyTG9naW5SZXESKQoHYWNjb3VudBgBIAEoCUIPkkEIMgbotKblj7fiQQECUgdhY2NvdW'
    '50EisKCHBhc3N3b3JkGAIgASgJQg+SQQgyBuWvhueggeJBAQJSCHBhc3N3b3JkEigKB2NhcHRj'
    'aGEYAyABKAlCDpJBCzIJ6aqM6K+B56CBUgdjYXB0Y2hhEjAKCmNhcHRjaGFfaWQYBCABKAlCEJ'
    'JBDTIL6aqM6K+B56CBaWRSCmNhcHRjaGFfaWQSSwoKY2xpZW50SW5mbxgFIAEoCzIXLmFwaS51'
    'c2VyLnYxLkNsaWVudEluZm9CEZJBDjIM6K6+5aSH5L+h5oGvUgtjbGllbnRfaW5mbw==');

@$core.Deprecated('Use userLoginBySmsReqDescriptor instead')
const UserLoginBySmsReq$json = {
  '1': 'UserLoginBySmsReq',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'account'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'code'},
    {'1': 'captcha', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'captcha'},
    {'1': 'captcha_id', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'captcha_id'},
    {'1': 'clientInfo', '3': 5, '4': 1, '5': 11, '6': '.api.user.v1.ClientInfo', '8': {}, '10': 'client_info'},
  ],
};

/// Descriptor for `UserLoginBySmsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLoginBySmsReqDescriptor = $convert.base64Decode(
    'ChFVc2VyTG9naW5CeVNtc1JlcRIpCgdhY2NvdW50GAEgASgJQg+SQQgyBui0puWPt+JBAQJSB2'
    'FjY291bnQSLAoEY29kZRgCIAEoCUIYkkERMg/nn63kv6Hpqozor4HnoIHiQQECUgRjb2RlEigK'
    'B2NhcHRjaGEYAyABKAlCDpJBCzIJ6aqM6K+B56CBUgdjYXB0Y2hhEjAKCmNhcHRjaGFfaWQYBC'
    'ABKAlCEJJBDTIL6aqM6K+B56CBaWRSCmNhcHRjaGFfaWQSSwoKY2xpZW50SW5mbxgFIAEoCzIX'
    'LmFwaS51c2VyLnYxLkNsaWVudEluZm9CEZJBDjIM6K6+5aSH5L+h5oGvUgtjbGllbnRfaW5mbw'
    '==');

@$core.Deprecated('Use userLoginReplyDescriptor instead')
const UserLoginReply$json = {
  '1': 'UserLoginReply',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'data', '3': 2, '4': 1, '5': 11, '6': '.api.user.v1.UserInfo', '10': 'data'},
  ],
};

/// Descriptor for `UserLoginReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLoginReplyDescriptor = $convert.base64Decode(
    'Cg5Vc2VyTG9naW5SZXBseRIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SKQoEZGF0YRgCIAEoCzIVLm'
    'FwaS51c2VyLnYxLlVzZXJJbmZvUgRkYXRh');

@$core.Deprecated('Use userInfoReqDescriptor instead')
const UserInfoReq$json = {
  '1': 'UserInfoReq',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'uuid'},
  ],
};

/// Descriptor for `UserInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoReqDescriptor = $convert.base64Decode(
    'CgtVc2VySW5mb1JlcRIhCgR1dWlkGAEgASgJQg2SQQYyBHV1aWTiQQECUgR1dWlk');

@$core.Deprecated('Use userInfoReplyDescriptor instead')
const UserInfoReply$json = {
  '1': 'UserInfoReply',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 11, '6': '.api.user.v1.UserInfo', '10': 'data'},
  ],
};

/// Descriptor for `UserInfoReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoReplyDescriptor = $convert.base64Decode(
    'Cg1Vc2VySW5mb1JlcGx5EikKBGRhdGEYASABKAsyFS5hcGkudXNlci52MS5Vc2VySW5mb1IEZG'
    'F0YQ==');

@$core.Deprecated('Use userStatusUpdateReqDescriptor instead')
const UserStatusUpdateReq$json = {
  '1': 'UserStatusUpdateReq',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'uuid'},
    {'1': 'enabled', '3': 2, '4': 1, '5': 8, '8': {}, '10': 'enabled'},
  ],
};

/// Descriptor for `UserStatusUpdateReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userStatusUpdateReqDescriptor = $convert.base64Decode(
    'ChNVc2VyU3RhdHVzVXBkYXRlUmVxEiEKBHV1aWQYASABKAlCDZJBBjIEdXVpZOJBAQJSBHV1aW'
    'QSLwoHZW5hYmxlZBgCIAEoCEIVkkEOMgzlkK/nlKjnirbmgIHiQQECUgdlbmFibGVk');

@$core.Deprecated('Use userStatusUpdateReplyDescriptor instead')
const UserStatusUpdateReply$json = {
  '1': 'UserStatusUpdateReply',
  '2': [
    {'1': 'msg', '3': 1, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `UserStatusUpdateReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userStatusUpdateReplyDescriptor = $convert.base64Decode(
    'ChVVc2VyU3RhdHVzVXBkYXRlUmVwbHkSEAoDbXNnGAEgASgJUgNtc2c=');

@$core.Deprecated('Use guestCheckReqDescriptor instead')
const GuestCheckReq$json = {
  '1': 'GuestCheckReq',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 11, '6': '.api.user.v1.ClientInfo', '8': {}, '10': 'data'},
  ],
};

/// Descriptor for `GuestCheckReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List guestCheckReqDescriptor = $convert.base64Decode(
    'Cg1HdWVzdENoZWNrUmVxEkIKBGRhdGEYASABKAsyFy5hcGkudXNlci52MS5DbGllbnRJbmZvQh'
    'WSQQ4yDOiuvuWkh+S/oeaBr+JBAQJSBGRhdGE=');

@$core.Deprecated('Use guestCheckReplyDescriptor instead')
const GuestCheckReply$json = {
  '1': 'GuestCheckReply',
  '2': [
    {'1': 'msg', '3': 1, '4': 1, '5': 9, '10': 'msg'},
    {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    {'1': 'code', '3': 3, '4': 1, '5': 3, '10': 'code'},
  ],
};

/// Descriptor for `GuestCheckReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List guestCheckReplyDescriptor = $convert.base64Decode(
    'Cg9HdWVzdENoZWNrUmVwbHkSEAoDbXNnGAEgASgJUgNtc2cSDgoCaWQYAiABKANSAmlkEhIKBG'
    'NvZGUYAyABKANSBGNvZGU=');

