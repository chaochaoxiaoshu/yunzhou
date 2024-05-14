//
//  Generated code. Do not modify.
//  source: admin.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use registerResponseDescriptor instead')
const RegisterResponse$json = {
  '1': 'RegisterResponse',
  '2': [
    {'1': 'errcode', '3': 1, '4': 1, '5': 13, '10': 'errcode'},
    {'1': 'errmsg', '3': 2, '4': 1, '5': 9, '10': 'errmsg'},
    {'1': 'request_id', '3': 3, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'result', '3': 4, '4': 1, '5': 11, '6': '.api.admin.v1.RegisterResponse.Result', '10': 'result'},
  ],
  '3': [RegisterResponse_Result$json],
};

@$core.Deprecated('Use registerResponseDescriptor instead')
const RegisterResponse_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'mobile', '3': 3, '4': 1, '5': 9, '10': 'mobile'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    {'1': 'nick_name', '3': 5, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'token', '3': 6, '4': 1, '5': 9, '10': 'token'},
    {'1': 'expired_at', '3': 7, '4': 1, '5': 3, '10': 'expiredAt'},
  ],
};

/// Descriptor for `RegisterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResponseDescriptor = $convert.base64Decode(
    'ChBSZWdpc3RlclJlc3BvbnNlEhgKB2VycmNvZGUYASABKA1SB2VycmNvZGUSFgoGZXJybXNnGA'
    'IgASgJUgZlcnJtc2cSHQoKcmVxdWVzdF9pZBgDIAEoCVIJcmVxdWVzdElkEj0KBnJlc3VsdBgE'
    'IAEoCzIlLmFwaS5hZG1pbi52MS5SZWdpc3RlclJlc3BvbnNlLlJlc3VsdFIGcmVzdWx0GpgBCg'
    'ZSZXN1bHQSDgoCaWQYASABKAlSAmlkEhYKBm1vYmlsZRgDIAEoCVIGbW9iaWxlEhQKBWVtYWls'
    'GAQgASgJUgVlbWFpbBIbCgluaWNrX25hbWUYBSABKAlSCG5pY2tOYW1lEhQKBXRva2VuGAYgAS'
    'gJUgV0b2tlbhIdCgpleHBpcmVkX2F0GAcgASgDUglleHBpcmVkQXQ=');

@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = {
  '1': 'RegisterRequest',
  '2': [
    {'1': 'mobile', '3': 1, '4': 1, '5': 9, '10': 'mobile'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'nick_name', '3': 3, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'password'},
    {'1': 'captcha', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'captcha'},
    {'1': 'captcha_id', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'captchaId'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode(
    'Cg9SZWdpc3RlclJlcXVlc3QSFgoGbW9iaWxlGAEgASgJUgZtb2JpbGUSHQoEbmFtZRgCIAEoCU'
    'IJ+kIGcgQQARgPUgRuYW1lEhsKCW5pY2tfbmFtZRgDIAEoCVIIbmlja05hbWUSFAoFZW1haWwY'
    'BCABKAlSBWVtYWlsEiMKCHBhc3N3b3JkGAUgASgJQgf6QgRyAhAIUghwYXNzd29yZBIjCgdjYX'
    'B0Y2hhGAYgASgJQgn6QgZyBBABGA9SB2NhcHRjaGESJgoKY2FwdGNoYV9pZBgHIAEoCUIH+kIE'
    'cgIQAVIJY2FwdGNoYUlk');

@$core.Deprecated('Use clientInfoDescriptor instead')
const ClientInfo$json = {
  '1': 'ClientInfo',
  '2': [
    {'1': 'clientType', '3': 1, '4': 1, '5': 13, '10': 'clientType'},
    {'1': 'deviceFingerprint', '3': 2, '4': 1, '5': 9, '10': 'deviceFingerprint'},
    {'1': 'CPUArchitecture', '3': 3, '4': 1, '5': 9, '10': 'CPUArchitecture'},
    {'1': 'IPs', '3': 4, '4': 1, '5': 9, '10': 'IPs'},
    {'1': 'KernelType', '3': 5, '4': 1, '5': 9, '10': 'KernelType'},
    {'1': 'KernelVersion', '3': 6, '4': 1, '5': 9, '10': 'KernelVersion'},
    {'1': 'ProductName', '3': 7, '4': 1, '5': 9, '10': 'ProductName'},
    {'1': 'UserHomeDirectory', '3': 8, '4': 1, '5': 9, '10': 'UserHomeDirectory'},
  ],
};

/// Descriptor for `ClientInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientInfoDescriptor = $convert.base64Decode(
    'CgpDbGllbnRJbmZvEh4KCmNsaWVudFR5cGUYASABKA1SCmNsaWVudFR5cGUSLAoRZGV2aWNlRm'
    'luZ2VycHJpbnQYAiABKAlSEWRldmljZUZpbmdlcnByaW50EigKD0NQVUFyY2hpdGVjdHVyZRgD'
    'IAEoCVIPQ1BVQXJjaGl0ZWN0dXJlEhAKA0lQcxgEIAEoCVIDSVBzEh4KCktlcm5lbFR5cGUYBS'
    'ABKAlSCktlcm5lbFR5cGUSJAoNS2VybmVsVmVyc2lvbhgGIAEoCVINS2VybmVsVmVyc2lvbhIg'
    'CgtQcm9kdWN0TmFtZRgHIAEoCVILUHJvZHVjdE5hbWUSLAoRVXNlckhvbWVEaXJlY3RvcnkYCC'
    'ABKAlSEVVzZXJIb21lRGlyZWN0b3J5');

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'user_uuid', '3': 1, '4': 1, '5': 9, '10': 'userUuid'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'corp_id', '3': 3, '4': 1, '5': 9, '10': 'corpId'},
    {'1': 'client_info', '3': 4, '4': 1, '5': 11, '6': '.api.admin.v1.ClientInfo', '8': {}, '10': 'clientInfo'},
    {'1': 'access_code', '3': 5, '4': 1, '5': 9, '10': 'accessCode'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSGwoJdXNlcl91dWlkGAEgASgJUgh1c2VyVXVpZBIXCgd1c2VyX2lkGA'
    'IgASgJUgZ1c2VySWQSFwoHY29ycF9pZBgDIAEoCVIGY29ycElkEkMKC2NsaWVudF9pbmZvGAQg'
    'ASgLMhguYXBpLmFkbWluLnYxLkNsaWVudEluZm9CCPpCBYoBAhABUgpjbGllbnRJbmZvEh8KC2'
    'FjY2Vzc19jb2RlGAUgASgJUgphY2Nlc3NDb2Rl');

@$core.Deprecated('Use getTokenByCodeRequestDescriptor instead')
const GetTokenByCodeRequest$json = {
  '1': 'GetTokenByCodeRequest',
  '2': [
    {'1': 'access_code', '3': 1, '4': 1, '5': 9, '10': 'accessCode'},
  ],
};

/// Descriptor for `GetTokenByCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTokenByCodeRequestDescriptor = $convert.base64Decode(
    'ChVHZXRUb2tlbkJ5Q29kZVJlcXVlc3QSHwoLYWNjZXNzX2NvZGUYASABKAlSCmFjY2Vzc0NvZG'
    'U=');

@$core.Deprecated('Use getTokenByCodeResponseDescriptor instead')
const GetTokenByCodeResponse$json = {
  '1': 'GetTokenByCodeResponse',
  '2': [
    {'1': 'errcode', '3': 1, '4': 1, '5': 13, '10': 'errcode'},
    {'1': 'errmsg', '3': 2, '4': 1, '5': 9, '10': 'errmsg'},
    {'1': 'request_id', '3': 3, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'result', '3': 4, '4': 1, '5': 11, '6': '.api.admin.v1.GetTokenByCodeResponse.Result', '10': 'result'},
  ],
  '3': [GetTokenByCodeResponse_Result$json],
};

@$core.Deprecated('Use getTokenByCodeResponseDescriptor instead')
const GetTokenByCodeResponse_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'token', '3': 6, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `GetTokenByCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTokenByCodeResponseDescriptor = $convert.base64Decode(
    'ChZHZXRUb2tlbkJ5Q29kZVJlc3BvbnNlEhgKB2VycmNvZGUYASABKA1SB2VycmNvZGUSFgoGZX'
    'JybXNnGAIgASgJUgZlcnJtc2cSHQoKcmVxdWVzdF9pZBgDIAEoCVIJcmVxdWVzdElkEkMKBnJl'
    'c3VsdBgEIAEoCzIrLmFwaS5hZG1pbi52MS5HZXRUb2tlbkJ5Q29kZVJlc3BvbnNlLlJlc3VsdF'
    'IGcmVzdWx0Gh4KBlJlc3VsdBIUCgV0b2tlbhgGIAEoCVIFdG9rZW4=');

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = {
  '1': 'LoginResponse',
  '2': [
    {'1': 'errcode', '3': 1, '4': 1, '5': 13, '10': 'errcode'},
    {'1': 'errmsg', '3': 2, '4': 1, '5': 9, '10': 'errmsg'},
    {'1': 'request_id', '3': 3, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'result', '3': 4, '4': 1, '5': 11, '6': '.api.admin.v1.LoginResponse.Result', '10': 'result'},
  ],
  '3': [LoginResponse_Result$json],
};

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'user_id', '3': 4, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'corp_id', '3': 5, '4': 1, '5': 9, '10': 'corpId'},
    {'1': 'token', '3': 6, '4': 1, '5': 9, '10': 'token'},
    {'1': 'expired_at', '3': 7, '4': 1, '5': 3, '10': 'expiredAt'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BvbnNlEhgKB2VycmNvZGUYASABKA1SB2VycmNvZGUSFgoGZXJybXNnGAIgAS'
    'gJUgZlcnJtc2cSHQoKcmVxdWVzdF9pZBgDIAEoCVIJcmVxdWVzdElkEjoKBnJlc3VsdBgEIAEo'
    'CzIiLmFwaS5hZG1pbi52MS5Mb2dpblJlc3BvbnNlLlJlc3VsdFIGcmVzdWx0Gn8KBlJlc3VsdB'
    'IOCgJpZBgBIAEoCVICaWQSFwoHdXNlcl9pZBgEIAEoCVIGdXNlcklkEhcKB2NvcnBfaWQYBSAB'
    'KAlSBmNvcnBJZBIUCgV0b2tlbhgGIAEoCVIFdG9rZW4SHQoKZXhwaXJlZF9hdBgHIAEoA1IJZX'
    'hwaXJlZEF0');

@$core.Deprecated('Use logoutRequestDescriptor instead')
const LogoutRequest$json = {
  '1': 'LogoutRequest',
  '2': [
    {'1': 'user_uuid', '3': 1, '4': 1, '5': 9, '10': 'userUuid'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'corp_id', '3': 3, '4': 1, '5': 9, '10': 'corpId'},
  ],
};

/// Descriptor for `LogoutRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logoutRequestDescriptor = $convert.base64Decode(
    'Cg1Mb2dvdXRSZXF1ZXN0EhsKCXVzZXJfdXVpZBgBIAEoCVIIdXNlclV1aWQSFwoHdXNlcl9pZB'
    'gCIAEoCVIGdXNlcklkEhcKB2NvcnBfaWQYAyABKAlSBmNvcnBJZA==');

@$core.Deprecated('Use logoutResponseDescriptor instead')
const LogoutResponse$json = {
  '1': 'LogoutResponse',
  '2': [
    {'1': 'errcode', '3': 1, '4': 1, '5': 13, '10': 'errcode'},
    {'1': 'errmsg', '3': 2, '4': 1, '5': 9, '10': 'errmsg'},
    {'1': 'request_id', '3': 3, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'result', '3': 4, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `LogoutResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logoutResponseDescriptor = $convert.base64Decode(
    'Cg5Mb2dvdXRSZXNwb25zZRIYCgdlcnJjb2RlGAEgASgNUgdlcnJjb2RlEhYKBmVycm1zZxgCIA'
    'EoCVIGZXJybXNnEh0KCnJlcXVlc3RfaWQYAyABKAlSCXJlcXVlc3RJZBIWCgZyZXN1bHQYBCAB'
    'KAhSBnJlc3VsdA==');

@$core.Deprecated('Use infoRequestDescriptor instead')
const InfoRequest$json = {
  '1': 'InfoRequest',
  '2': [
    {'1': 'user_uuid', '3': 1, '4': 1, '5': 9, '10': 'userUuid'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'corp_id', '3': 3, '4': 1, '5': 9, '10': 'corpId'},
  ],
};

/// Descriptor for `InfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List infoRequestDescriptor = $convert.base64Decode(
    'CgtJbmZvUmVxdWVzdBIbCgl1c2VyX3V1aWQYASABKAlSCHVzZXJVdWlkEhcKB3VzZXJfaWQYAi'
    'ABKAlSBnVzZXJJZBIXCgdjb3JwX2lkGAMgASgJUgZjb3JwSWQ=');

@$core.Deprecated('Use infoResponseDescriptor instead')
const InfoResponse$json = {
  '1': 'InfoResponse',
  '2': [
    {'1': 'errcode', '3': 1, '4': 1, '5': 13, '10': 'errcode'},
    {'1': 'errmsg', '3': 2, '4': 1, '5': 9, '10': 'errmsg'},
    {'1': 'request_id', '3': 3, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'result', '3': 4, '4': 1, '5': 11, '6': '.api.admin.v1.InfoResponse.Result', '10': 'result'},
  ],
  '3': [InfoResponse_Result$json],
};

@$core.Deprecated('Use infoResponseDescriptor instead')
const InfoResponse_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'nick_name', '3': 1, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'org_email', '3': 3, '4': 1, '5': 9, '10': 'orgEmail'},
    {'1': 'mobile', '3': 4, '4': 1, '5': 9, '10': 'mobile'},
    {'1': 'idcard', '3': 5, '4': 1, '5': 9, '10': 'idcard'},
    {'1': 'corp_name', '3': 6, '4': 1, '5': 9, '10': 'corpName'},
    {'1': 'corp_credit_code', '3': 7, '4': 1, '5': 9, '10': 'corpCreditCode'},
    {'1': 'department_path', '3': 8, '4': 1, '5': 9, '10': 'departmentPath'},
    {'1': 'roles', '3': 9, '4': 3, '5': 9, '10': 'roles'},
    {'1': 'login_info', '3': 10, '4': 1, '5': 11, '6': '.api.admin.v1.InfoResponse.Result.LoginInfo', '10': 'loginInfo'},
  ],
  '3': [InfoResponse_Result_LoginInfo$json],
};

@$core.Deprecated('Use infoResponseDescriptor instead')
const InfoResponse_Result_LoginInfo$json = {
  '1': 'LoginInfo',
  '2': [
    {'1': 'client_info', '3': 1, '4': 3, '5': 11, '6': '.api.admin.v1.InfoResponse.Result.LoginInfo.ClientInfo', '10': 'clientInfo'},
  ],
  '3': [InfoResponse_Result_LoginInfo_ClientInfo$json],
};

@$core.Deprecated('Use infoResponseDescriptor instead')
const InfoResponse_Result_LoginInfo_ClientInfo$json = {
  '1': 'ClientInfo',
  '2': [
    {'1': 'device_fingerprint', '3': 1, '4': 1, '5': 9, '10': 'deviceFingerprint'},
    {'1': 'client_type', '3': 2, '4': 1, '5': 13, '10': 'clientType'},
  ],
};

/// Descriptor for `InfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List infoResponseDescriptor = $convert.base64Decode(
    'CgxJbmZvUmVzcG9uc2USGAoHZXJyY29kZRgBIAEoDVIHZXJyY29kZRIWCgZlcnJtc2cYAiABKA'
    'lSBmVycm1zZxIdCgpyZXF1ZXN0X2lkGAMgASgJUglyZXF1ZXN0SWQSOQoGcmVzdWx0GAQgASgL'
    'MiEuYXBpLmFkbWluLnYxLkluZm9SZXNwb25zZS5SZXN1bHRSBnJlc3VsdBqfBAoGUmVzdWx0Eh'
    'sKCW5pY2tfbmFtZRgBIAEoCVIIbmlja05hbWUSFAoFZW1haWwYAiABKAlSBWVtYWlsEhsKCW9y'
    'Z19lbWFpbBgDIAEoCVIIb3JnRW1haWwSFgoGbW9iaWxlGAQgASgJUgZtb2JpbGUSFgoGaWRjYX'
    'JkGAUgASgJUgZpZGNhcmQSGwoJY29ycF9uYW1lGAYgASgJUghjb3JwTmFtZRIoChBjb3JwX2Ny'
    'ZWRpdF9jb2RlGAcgASgJUg5jb3JwQ3JlZGl0Q29kZRInCg9kZXBhcnRtZW50X3BhdGgYCCABKA'
    'lSDmRlcGFydG1lbnRQYXRoEhQKBXJvbGVzGAkgAygJUgVyb2xlcxJKCgpsb2dpbl9pbmZvGAog'
    'ASgLMisuYXBpLmFkbWluLnYxLkluZm9SZXNwb25zZS5SZXN1bHQuTG9naW5JbmZvUglsb2dpbk'
    'luZm8awgEKCUxvZ2luSW5mbxJXCgtjbGllbnRfaW5mbxgBIAMoCzI2LmFwaS5hZG1pbi52MS5J'
    'bmZvUmVzcG9uc2UuUmVzdWx0LkxvZ2luSW5mby5DbGllbnRJbmZvUgpjbGllbnRJbmZvGlwKCk'
    'NsaWVudEluZm8SLQoSZGV2aWNlX2ZpbmdlcnByaW50GAEgASgJUhFkZXZpY2VGaW5nZXJwcmlu'
    'dBIfCgtjbGllbnRfdHlwZRgCIAEoDVIKY2xpZW50VHlwZQ==');

@$core.Deprecated('Use accountRequestDescriptor instead')
const AccountRequest$json = {
  '1': 'AccountRequest',
  '2': [
    {'1': 'mobile', '3': 1, '4': 1, '5': 9, '10': 'mobile'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'password'},
    {'1': 'captcha', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'captcha'},
    {'1': 'captcha_id', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'captchaId'},
  ],
};

/// Descriptor for `AccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountRequestDescriptor = $convert.base64Decode(
    'Cg5BY2NvdW50UmVxdWVzdBIWCgZtb2JpbGUYASABKAlSBm1vYmlsZRIUCgVlbWFpbBgCIAEoCV'
    'IFZW1haWwSIwoIcGFzc3dvcmQYAyABKAlCB/pCBHICEAhSCHBhc3N3b3JkEiMKB2NhcHRjaGEY'
    'BCABKAlCCfpCBnIEEAEYD1IHY2FwdGNoYRImCgpjYXB0Y2hhX2lkGAUgASgJQgf6QgRyAhABUg'
    'ljYXB0Y2hhSWQ=');

@$core.Deprecated('Use sMSAccountRequestDescriptor instead')
const SMSAccountRequest$json = {
  '1': 'SMSAccountRequest',
  '2': [
    {'1': 'mobile', '3': 1, '4': 1, '5': 9, '10': 'mobile'},
    {'1': 'code', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'code'},
    {'1': 'captcha', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'captcha'},
    {'1': 'captcha_id', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'captchaId'},
  ],
};

/// Descriptor for `SMSAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sMSAccountRequestDescriptor = $convert.base64Decode(
    'ChFTTVNBY2NvdW50UmVxdWVzdBIWCgZtb2JpbGUYASABKAlSBm1vYmlsZRIbCgRjb2RlGAMgAS'
    'gJQgf6QgRyAhAEUgRjb2RlEiMKB2NhcHRjaGEYBCABKAlCCfpCBnIEEAEYD1IHY2FwdGNoYRIm'
    'CgpjYXB0Y2hhX2lkGAUgASgJQgf6QgRyAhABUgljYXB0Y2hhSWQ=');

@$core.Deprecated('Use accountResponseDescriptor instead')
const AccountResponse$json = {
  '1': 'AccountResponse',
  '2': [
    {'1': 'errcode', '3': 1, '4': 1, '5': 13, '10': 'errcode'},
    {'1': 'errmsg', '3': 2, '4': 1, '5': 9, '10': 'errmsg'},
    {'1': 'request_id', '3': 3, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'result', '3': 4, '4': 1, '5': 11, '6': '.api.admin.v1.AccountResponse.Result', '10': 'result'},
  ],
  '3': [AccountResponse_Result$json],
};

@$core.Deprecated('Use accountResponseDescriptor instead')
const AccountResponse_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'userid_list', '3': 1, '4': 3, '5': 11, '6': '.api.admin.v1.AccountResponse.Result.List', '10': 'useridList'},
    {'1': 'access_code', '3': 3, '4': 1, '5': 9, '10': 'accessCode'},
  ],
  '3': [AccountResponse_Result_List$json],
};

@$core.Deprecated('Use accountResponseDescriptor instead')
const AccountResponse_Result_List$json = {
  '1': 'List',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'corp_id', '3': 2, '4': 1, '5': 9, '10': 'corpId'},
    {'1': 'corp_name', '3': 3, '4': 1, '5': 9, '10': 'corpName'},
    {'1': 'nick_name', '3': 4, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'corp_logo_url', '3': 5, '4': 1, '5': 9, '10': 'corpLogoUrl'},
    {'1': 'user_uuid', '3': 6, '4': 1, '5': 9, '10': 'userUuid'},
  ],
};

/// Descriptor for `AccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountResponseDescriptor = $convert.base64Decode(
    'Cg9BY2NvdW50UmVzcG9uc2USGAoHZXJyY29kZRgBIAEoDVIHZXJyY29kZRIWCgZlcnJtc2cYAi'
    'ABKAlSBmVycm1zZxIdCgpyZXF1ZXN0X2lkGAMgASgJUglyZXF1ZXN0SWQSPAoGcmVzdWx0GAQg'
    'ASgLMiQuYXBpLmFkbWluLnYxLkFjY291bnRSZXNwb25zZS5SZXN1bHRSBnJlc3VsdBqrAgoGUm'
    'VzdWx0EkoKC3VzZXJpZF9saXN0GAEgAygLMikuYXBpLmFkbWluLnYxLkFjY291bnRSZXNwb25z'
    'ZS5SZXN1bHQuTGlzdFIKdXNlcmlkTGlzdBIfCgthY2Nlc3NfY29kZRgDIAEoCVIKYWNjZXNzQ2'
    '9kZRqzAQoETGlzdBIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSFwoHY29ycF9pZBgCIAEoCVIG'
    'Y29ycElkEhsKCWNvcnBfbmFtZRgDIAEoCVIIY29ycE5hbWUSGwoJbmlja19uYW1lGAQgASgJUg'
    'huaWNrTmFtZRIiCg1jb3JwX2xvZ29fdXJsGAUgASgJUgtjb3JwTG9nb1VybBIbCgl1c2VyX3V1'
    'aWQYBiABKAlSCHVzZXJVdWlk');

@$core.Deprecated('Use verifyCaptchaRequestDescriptor instead')
const VerifyCaptchaRequest$json = {
  '1': 'VerifyCaptchaRequest',
  '2': [
    {'1': 'captcha_id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'captchaId'},
    {'1': 'captcha', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'captcha'},
  ],
};

/// Descriptor for `VerifyCaptchaRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyCaptchaRequestDescriptor = $convert.base64Decode(
    'ChRWZXJpZnlDYXB0Y2hhUmVxdWVzdBInCgpjYXB0Y2hhX2lkGAEgASgJQgj6QgVyA5gBAVIJY2'
    'FwdGNoYUlkEiIKB2NhcHRjaGEYAiABKAlCCPpCBXIDmAEBUgdjYXB0Y2hh');

@$core.Deprecated('Use verifyCaptchaResponseDescriptor instead')
const VerifyCaptchaResponse$json = {
  '1': 'VerifyCaptchaResponse',
  '2': [
    {'1': 'errcode', '3': 1, '4': 1, '5': 13, '10': 'errcode'},
    {'1': 'errmsg', '3': 2, '4': 1, '5': 9, '10': 'errmsg'},
    {'1': 'request_id', '3': 3, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'result', '3': 4, '4': 1, '5': 11, '6': '.api.admin.v1.VerifyCaptchaResponse.Result', '10': 'result'},
  ],
  '3': [VerifyCaptchaResponse_Result$json],
};

@$core.Deprecated('Use verifyCaptchaResponseDescriptor instead')
const VerifyCaptchaResponse_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'is_success', '3': 1, '4': 1, '5': 8, '10': 'isSuccess'},
  ],
};

/// Descriptor for `VerifyCaptchaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyCaptchaResponseDescriptor = $convert.base64Decode(
    'ChVWZXJpZnlDYXB0Y2hhUmVzcG9uc2USGAoHZXJyY29kZRgBIAEoDVIHZXJyY29kZRIWCgZlcn'
    'Jtc2cYAiABKAlSBmVycm1zZxIdCgpyZXF1ZXN0X2lkGAMgASgJUglyZXF1ZXN0SWQSQgoGcmVz'
    'dWx0GAQgASgLMiouYXBpLmFkbWluLnYxLlZlcmlmeUNhcHRjaGFSZXNwb25zZS5SZXN1bHRSBn'
    'Jlc3VsdBonCgZSZXN1bHQSHQoKaXNfc3VjY2VzcxgBIAEoCFIJaXNTdWNjZXNz');

@$core.Deprecated('Use sMSCaptchaRequestDescriptor instead')
const SMSCaptchaRequest$json = {
  '1': 'SMSCaptchaRequest',
  '2': [
    {'1': 'mobile', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'mobile'},
  ],
};

/// Descriptor for `SMSCaptchaRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sMSCaptchaRequestDescriptor = $convert.base64Decode(
    'ChFTTVNDYXB0Y2hhUmVxdWVzdBIgCgZtb2JpbGUYASABKAlCCPpCBXIDmAELUgZtb2JpbGU=');

@$core.Deprecated('Use captchaResponseDescriptor instead')
const CaptchaResponse$json = {
  '1': 'CaptchaResponse',
  '2': [
    {'1': 'errcode', '3': 1, '4': 1, '5': 13, '10': 'errcode'},
    {'1': 'errmsg', '3': 2, '4': 1, '5': 9, '10': 'errmsg'},
    {'1': 'request_id', '3': 3, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'result', '3': 4, '4': 1, '5': 11, '6': '.api.admin.v1.CaptchaResponse.Result', '10': 'result'},
  ],
  '3': [CaptchaResponse_Result$json],
};

@$core.Deprecated('Use captchaResponseDescriptor instead')
const CaptchaResponse_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'captcha_id', '3': 1, '4': 1, '5': 9, '10': 'captchaId'},
    {'1': 'pic_path', '3': 2, '4': 1, '5': 9, '10': 'picPath'},
  ],
};

/// Descriptor for `CaptchaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List captchaResponseDescriptor = $convert.base64Decode(
    'Cg9DYXB0Y2hhUmVzcG9uc2USGAoHZXJyY29kZRgBIAEoDVIHZXJyY29kZRIWCgZlcnJtc2cYAi'
    'ABKAlSBmVycm1zZxIdCgpyZXF1ZXN0X2lkGAMgASgJUglyZXF1ZXN0SWQSPAoGcmVzdWx0GAQg'
    'ASgLMiQuYXBpLmFkbWluLnYxLkNhcHRjaGFSZXNwb25zZS5SZXN1bHRSBnJlc3VsdBpCCgZSZX'
    'N1bHQSHQoKY2FwdGNoYV9pZBgBIAEoCVIJY2FwdGNoYUlkEhkKCHBpY19wYXRoGAIgASgJUgdw'
    'aWNQYXRo');

@$core.Deprecated('Use totalOnlineUserResponseDescriptor instead')
const TotalOnlineUserResponse$json = {
  '1': 'TotalOnlineUserResponse',
  '2': [
    {'1': 'errcode', '3': 1, '4': 1, '5': 13, '10': 'errcode'},
    {'1': 'errmsg', '3': 2, '4': 1, '5': 9, '10': 'errmsg'},
    {'1': 'request_id', '3': 3, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'result', '3': 4, '4': 1, '5': 11, '6': '.api.admin.v1.TotalOnlineUserResponse.Result', '10': 'result'},
  ],
  '3': [TotalOnlineUserResponse_Result$json],
};

@$core.Deprecated('Use totalOnlineUserResponseDescriptor instead')
const TotalOnlineUserResponse_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'total_online_users', '3': 1, '4': 1, '5': 13, '10': 'totalOnlineUsers'},
  ],
};

/// Descriptor for `TotalOnlineUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List totalOnlineUserResponseDescriptor = $convert.base64Decode(
    'ChdUb3RhbE9ubGluZVVzZXJSZXNwb25zZRIYCgdlcnJjb2RlGAEgASgNUgdlcnJjb2RlEhYKBm'
    'Vycm1zZxgCIAEoCVIGZXJybXNnEh0KCnJlcXVlc3RfaWQYAyABKAlSCXJlcXVlc3RJZBJECgZy'
    'ZXN1bHQYBCABKAsyLC5hcGkuYWRtaW4udjEuVG90YWxPbmxpbmVVc2VyUmVzcG9uc2UuUmVzdW'
    'x0UgZyZXN1bHQaNgoGUmVzdWx0EiwKEnRvdGFsX29ubGluZV91c2VycxgBIAEoDVIQdG90YWxP'
    'bmxpbmVVc2Vycw==');

