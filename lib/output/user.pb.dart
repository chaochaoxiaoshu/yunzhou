//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// 分页
class Page extends $pb.GeneratedMessage {
  factory Page({
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
    $fixnum.Int64? total,
    $fixnum.Int64? totalPage,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (total != null) {
      $result.total = total;
    }
    if (totalPage != null) {
      $result.totalPage = totalPage;
    }
    return $result;
  }
  Page._() : super();
  factory Page.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Page.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Page', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aInt64(2, _omitFieldNames ? '' : 'page_size')
    ..aInt64(3, _omitFieldNames ? '' : 'total')
    ..aInt64(4, _omitFieldNames ? '' : 'total_page')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Page clone() => Page()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Page copyWith(void Function(Page) updates) => super.copyWith((message) => updates(message as Page)) as Page;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Page create() => Page._();
  Page createEmptyInstance() => create();
  static $pb.PbList<Page> createRepeated() => $pb.PbList<Page>();
  @$core.pragma('dart2js:noInline')
  static Page getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Page>(create);
  static Page? _defaultInstance;

  /// 页码
  @$pb.TagNumber(1)
  $fixnum.Int64 get page => $_getI64(0);
  @$pb.TagNumber(1)
  set page($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  /// 每页数量
  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  /// 总数
  @$pb.TagNumber(3)
  $fixnum.Int64 get total => $_getI64(2);
  @$pb.TagNumber(3)
  set total($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotal() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotal() => clearField(3);

  /// 总页数
  @$pb.TagNumber(4)
  $fixnum.Int64 get totalPage => $_getI64(3);
  @$pb.TagNumber(4)
  set totalPage($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalPage() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalPage() => clearField(4);
}

class UserInfo extends $pb.GeneratedMessage {
  factory UserInfo({
    $core.String? uuid,
    $core.String? userId,
    $fixnum.Int64? memberId,
    $core.String? mail,
    $core.String? mobile,
    $core.String? username,
    $core.String? avatar,
    $core.String? invite,
    $core.String? inviteCode,
    $core.bool? isVip,
    $fixnum.Int64? vipLevel,
    $fixnum.Int64? vipExpiresIn,
    $fixnum.Int64? balance,
    $fixnum.Int64? balanceExpiresIn,
    $core.String? line,
    $core.String? createdAt,
    $core.String? corpId,
    $core.String? googleId,
    $core.String? wechatId,
    $core.bool? enabled,
    $core.bool? accountStatus,
    $fixnum.Int64? usedTime,
    $fixnum.Int64? totalTime,
    $fixnum.Int64? totalTraffic,
    $fixnum.Int64? usedTraffic,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (memberId != null) {
      $result.memberId = memberId;
    }
    if (mail != null) {
      $result.mail = mail;
    }
    if (mobile != null) {
      $result.mobile = mobile;
    }
    if (username != null) {
      $result.username = username;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (invite != null) {
      $result.invite = invite;
    }
    if (inviteCode != null) {
      $result.inviteCode = inviteCode;
    }
    if (isVip != null) {
      $result.isVip = isVip;
    }
    if (vipLevel != null) {
      $result.vipLevel = vipLevel;
    }
    if (vipExpiresIn != null) {
      $result.vipExpiresIn = vipExpiresIn;
    }
    if (balance != null) {
      $result.balance = balance;
    }
    if (balanceExpiresIn != null) {
      $result.balanceExpiresIn = balanceExpiresIn;
    }
    if (line != null) {
      $result.line = line;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (corpId != null) {
      $result.corpId = corpId;
    }
    if (googleId != null) {
      $result.googleId = googleId;
    }
    if (wechatId != null) {
      $result.wechatId = wechatId;
    }
    if (enabled != null) {
      $result.enabled = enabled;
    }
    if (accountStatus != null) {
      $result.accountStatus = accountStatus;
    }
    if (usedTime != null) {
      $result.usedTime = usedTime;
    }
    if (totalTime != null) {
      $result.totalTime = totalTime;
    }
    if (totalTraffic != null) {
      $result.totalTraffic = totalTraffic;
    }
    if (usedTraffic != null) {
      $result.usedTraffic = usedTraffic;
    }
    return $result;
  }
  UserInfo._() : super();
  factory UserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..aOS(2, _omitFieldNames ? '' : 'user_id', protoName: 'userId')
    ..aInt64(3, _omitFieldNames ? '' : 'member_id', protoName: 'memberId')
    ..aOS(4, _omitFieldNames ? '' : 'mail')
    ..aOS(5, _omitFieldNames ? '' : 'mobile')
    ..aOS(6, _omitFieldNames ? '' : 'username')
    ..aOS(7, _omitFieldNames ? '' : 'avatar')
    ..aOS(8, _omitFieldNames ? '' : 'invite')
    ..aOS(9, _omitFieldNames ? '' : 'invite_code')
    ..aOB(10, _omitFieldNames ? '' : 'is_vip')
    ..aInt64(11, _omitFieldNames ? '' : 'vip_level')
    ..aInt64(12, _omitFieldNames ? '' : 'vip_expires_in')
    ..aInt64(13, _omitFieldNames ? '' : 'balance')
    ..aInt64(14, _omitFieldNames ? '' : 'balance_expires_in')
    ..aOS(15, _omitFieldNames ? '' : 'line')
    ..aOS(16, _omitFieldNames ? '' : 'created_at')
    ..aOS(17, _omitFieldNames ? '' : 'corp_id')
    ..aOS(18, _omitFieldNames ? '' : 'google_id')
    ..aOS(19, _omitFieldNames ? '' : 'wechat_id')
    ..aOB(20, _omitFieldNames ? '' : 'enabled')
    ..aOB(21, _omitFieldNames ? '' : 'account_status')
    ..aInt64(22, _omitFieldNames ? '' : 'used_time')
    ..aInt64(23, _omitFieldNames ? '' : 'total_time')
    ..aInt64(24, _omitFieldNames ? '' : 'total_traffic')
    ..aInt64(25, _omitFieldNames ? '' : 'used_traffic')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfo clone() => UserInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfo copyWith(void Function(UserInfo) updates) => super.copyWith((message) => updates(message as UserInfo)) as UserInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserInfo create() => UserInfo._();
  UserInfo createEmptyInstance() => create();
  static $pb.PbList<UserInfo> createRepeated() => $pb.PbList<UserInfo>();
  @$core.pragma('dart2js:noInline')
  static UserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfo>(create);
  static UserInfo? _defaultInstance;

  /// uuid
  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  /// userid
  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  /// memberId
  @$pb.TagNumber(3)
  $fixnum.Int64 get memberId => $_getI64(2);
  @$pb.TagNumber(3)
  set memberId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMemberId() => $_has(2);
  @$pb.TagNumber(3)
  void clearMemberId() => clearField(3);

  /// 邮箱
  @$pb.TagNumber(4)
  $core.String get mail => $_getSZ(3);
  @$pb.TagNumber(4)
  set mail($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMail() => $_has(3);
  @$pb.TagNumber(4)
  void clearMail() => clearField(4);

  /// 手机号码
  @$pb.TagNumber(5)
  $core.String get mobile => $_getSZ(4);
  @$pb.TagNumber(5)
  set mobile($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMobile() => $_has(4);
  @$pb.TagNumber(5)
  void clearMobile() => clearField(5);

  /// 用户名
  @$pb.TagNumber(6)
  $core.String get username => $_getSZ(5);
  @$pb.TagNumber(6)
  set username($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUsername() => $_has(5);
  @$pb.TagNumber(6)
  void clearUsername() => clearField(6);

  /// 头像
  @$pb.TagNumber(7)
  $core.String get avatar => $_getSZ(6);
  @$pb.TagNumber(7)
  set avatar($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAvatar() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvatar() => clearField(7);

  /// 邀请人
  @$pb.TagNumber(8)
  $core.String get invite => $_getSZ(7);
  @$pb.TagNumber(8)
  set invite($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasInvite() => $_has(7);
  @$pb.TagNumber(8)
  void clearInvite() => clearField(8);

  /// 邀请码
  @$pb.TagNumber(9)
  $core.String get inviteCode => $_getSZ(8);
  @$pb.TagNumber(9)
  set inviteCode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasInviteCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearInviteCode() => clearField(9);

  /// 是否vip
  @$pb.TagNumber(10)
  $core.bool get isVip => $_getBF(9);
  @$pb.TagNumber(10)
  set isVip($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasIsVip() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsVip() => clearField(10);

  /// vip等级
  @$pb.TagNumber(11)
  $fixnum.Int64 get vipLevel => $_getI64(10);
  @$pb.TagNumber(11)
  set vipLevel($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasVipLevel() => $_has(10);
  @$pb.TagNumber(11)
  void clearVipLevel() => clearField(11);

  /// vip过期时间
  @$pb.TagNumber(12)
  $fixnum.Int64 get vipExpiresIn => $_getI64(11);
  @$pb.TagNumber(12)
  set vipExpiresIn($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasVipExpiresIn() => $_has(11);
  @$pb.TagNumber(12)
  void clearVipExpiresIn() => clearField(12);

  /// 剩余时长
  @$pb.TagNumber(13)
  $fixnum.Int64 get balance => $_getI64(12);
  @$pb.TagNumber(13)
  set balance($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasBalance() => $_has(12);
  @$pb.TagNumber(13)
  void clearBalance() => clearField(13);

  /// 剩余时长过期时间
  @$pb.TagNumber(14)
  $fixnum.Int64 get balanceExpiresIn => $_getI64(13);
  @$pb.TagNumber(14)
  set balanceExpiresIn($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasBalanceExpiresIn() => $_has(13);
  @$pb.TagNumber(14)
  void clearBalanceExpiresIn() => clearField(14);

  /// 所选线路
  @$pb.TagNumber(15)
  $core.String get line => $_getSZ(14);
  @$pb.TagNumber(15)
  set line($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasLine() => $_has(14);
  @$pb.TagNumber(15)
  void clearLine() => clearField(15);

  /// 注册时间
  @$pb.TagNumber(16)
  $core.String get createdAt => $_getSZ(15);
  @$pb.TagNumber(16)
  set createdAt($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasCreatedAt() => $_has(15);
  @$pb.TagNumber(16)
  void clearCreatedAt() => clearField(16);

  /// corpID
  @$pb.TagNumber(17)
  $core.String get corpId => $_getSZ(16);
  @$pb.TagNumber(17)
  set corpId($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasCorpId() => $_has(16);
  @$pb.TagNumber(17)
  void clearCorpId() => clearField(17);

  /// google id
  @$pb.TagNumber(18)
  $core.String get googleId => $_getSZ(17);
  @$pb.TagNumber(18)
  set googleId($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasGoogleId() => $_has(17);
  @$pb.TagNumber(18)
  void clearGoogleId() => clearField(18);

  /// 微信id
  @$pb.TagNumber(19)
  $core.String get wechatId => $_getSZ(18);
  @$pb.TagNumber(19)
  set wechatId($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasWechatId() => $_has(18);
  @$pb.TagNumber(19)
  void clearWechatId() => clearField(19);

  /// 启用状态
  @$pb.TagNumber(20)
  $core.bool get enabled => $_getBF(19);
  @$pb.TagNumber(20)
  set enabled($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasEnabled() => $_has(19);
  @$pb.TagNumber(20)
  void clearEnabled() => clearField(20);

  /// 账号状态
  @$pb.TagNumber(21)
  $core.bool get accountStatus => $_getBF(20);
  @$pb.TagNumber(21)
  set accountStatus($core.bool v) { $_setBool(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasAccountStatus() => $_has(20);
  @$pb.TagNumber(21)
  void clearAccountStatus() => clearField(21);

  /// 使用时长
  @$pb.TagNumber(22)
  $fixnum.Int64 get usedTime => $_getI64(21);
  @$pb.TagNumber(22)
  set usedTime($fixnum.Int64 v) { $_setInt64(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasUsedTime() => $_has(21);
  @$pb.TagNumber(22)
  void clearUsedTime() => clearField(22);

  /// 总时长
  @$pb.TagNumber(23)
  $fixnum.Int64 get totalTime => $_getI64(22);
  @$pb.TagNumber(23)
  set totalTime($fixnum.Int64 v) { $_setInt64(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasTotalTime() => $_has(22);
  @$pb.TagNumber(23)
  void clearTotalTime() => clearField(23);

  /// 总流量
  @$pb.TagNumber(24)
  $fixnum.Int64 get totalTraffic => $_getI64(23);
  @$pb.TagNumber(24)
  set totalTraffic($fixnum.Int64 v) { $_setInt64(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasTotalTraffic() => $_has(23);
  @$pb.TagNumber(24)
  void clearTotalTraffic() => clearField(24);

  /// 使用流量
  @$pb.TagNumber(25)
  $fixnum.Int64 get usedTraffic => $_getI64(24);
  @$pb.TagNumber(25)
  set usedTraffic($fixnum.Int64 v) { $_setInt64(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasUsedTraffic() => $_has(24);
  @$pb.TagNumber(25)
  void clearUsedTraffic() => clearField(25);
}

class UserListReq extends $pb.GeneratedMessage {
  factory UserListReq({
    $fixnum.Int64? page,
    $fixnum.Int64? pageSize,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    return $result;
  }
  UserListReq._() : super();
  factory UserListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserListReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'page')
    ..aInt64(2, _omitFieldNames ? '' : 'page_size')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserListReq clone() => UserListReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserListReq copyWith(void Function(UserListReq) updates) => super.copyWith((message) => updates(message as UserListReq)) as UserListReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserListReq create() => UserListReq._();
  UserListReq createEmptyInstance() => create();
  static $pb.PbList<UserListReq> createRepeated() => $pb.PbList<UserListReq>();
  @$core.pragma('dart2js:noInline')
  static UserListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserListReq>(create);
  static UserListReq? _defaultInstance;

  /// 页码
  @$pb.TagNumber(1)
  $fixnum.Int64 get page => $_getI64(0);
  @$pb.TagNumber(1)
  set page($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  /// 每页数量
  @$pb.TagNumber(2)
  $fixnum.Int64 get pageSize => $_getI64(1);
  @$pb.TagNumber(2)
  set pageSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);
}

class UserListReply extends $pb.GeneratedMessage {
  factory UserListReply({
    $core.Iterable<UserInfo>? data,
    Page? page,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    if (page != null) {
      $result.page = page;
    }
    return $result;
  }
  UserListReply._() : super();
  factory UserListReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserListReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserListReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..pc<UserInfo>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: UserInfo.create)
    ..aOM<Page>(2, _omitFieldNames ? '' : 'page', subBuilder: Page.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserListReply clone() => UserListReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserListReply copyWith(void Function(UserListReply) updates) => super.copyWith((message) => updates(message as UserListReply)) as UserListReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserListReply create() => UserListReply._();
  UserListReply createEmptyInstance() => create();
  static $pb.PbList<UserListReply> createRepeated() => $pb.PbList<UserListReply>();
  @$core.pragma('dart2js:noInline')
  static UserListReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserListReply>(create);
  static UserListReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserInfo> get data => $_getList(0);

  @$pb.TagNumber(2)
  Page get page => $_getN(1);
  @$pb.TagNumber(2)
  set page(Page v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => clearField(2);
  @$pb.TagNumber(2)
  Page ensurePage() => $_ensure(1);
}

class UserRegisterReq extends $pb.GeneratedMessage {
  factory UserRegisterReq({
    $core.String? account,
    $core.String? password,
    $core.String? username,
    $core.String? invite,
    $core.String? captcha,
    $core.String? captchaId,
    ClientInfo? clientInfo,
  }) {
    final $result = create();
    if (account != null) {
      $result.account = account;
    }
    if (password != null) {
      $result.password = password;
    }
    if (username != null) {
      $result.username = username;
    }
    if (invite != null) {
      $result.invite = invite;
    }
    if (captcha != null) {
      $result.captcha = captcha;
    }
    if (captchaId != null) {
      $result.captchaId = captchaId;
    }
    if (clientInfo != null) {
      $result.clientInfo = clientInfo;
    }
    return $result;
  }
  UserRegisterReq._() : super();
  factory UserRegisterReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRegisterReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserRegisterReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'account')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'username')
    ..aOS(4, _omitFieldNames ? '' : 'invite')
    ..aOS(5, _omitFieldNames ? '' : 'captcha')
    ..aOS(6, _omitFieldNames ? '' : 'captcha_id')
    ..aOM<ClientInfo>(7, _omitFieldNames ? '' : 'client_info', protoName: 'clientInfo', subBuilder: ClientInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRegisterReq clone() => UserRegisterReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRegisterReq copyWith(void Function(UserRegisterReq) updates) => super.copyWith((message) => updates(message as UserRegisterReq)) as UserRegisterReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserRegisterReq create() => UserRegisterReq._();
  UserRegisterReq createEmptyInstance() => create();
  static $pb.PbList<UserRegisterReq> createRepeated() => $pb.PbList<UserRegisterReq>();
  @$core.pragma('dart2js:noInline')
  static UserRegisterReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRegisterReq>(create);
  static UserRegisterReq? _defaultInstance;

  /// oneof register {
  ///   string mobile = 1 [json_name = "mobile", (grpc.gateway.protoc_gen_openapiv2.options.openapiv2_field) = { description: "手机号码"}];
  ///   string mail = 2 [json_name = "mail", (grpc.gateway.protoc_gen_openapiv2.options.openapiv2_field) = { description: "邮箱"}];
  /// }
  @$pb.TagNumber(1)
  $core.String get account => $_getSZ(0);
  @$pb.TagNumber(1)
  set account($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get username => $_getSZ(2);
  @$pb.TagNumber(3)
  set username($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUsername() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsername() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get invite => $_getSZ(3);
  @$pb.TagNumber(4)
  set invite($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInvite() => $_has(3);
  @$pb.TagNumber(4)
  void clearInvite() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get captcha => $_getSZ(4);
  @$pb.TagNumber(5)
  set captcha($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCaptcha() => $_has(4);
  @$pb.TagNumber(5)
  void clearCaptcha() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get captchaId => $_getSZ(5);
  @$pb.TagNumber(6)
  set captchaId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCaptchaId() => $_has(5);
  @$pb.TagNumber(6)
  void clearCaptchaId() => clearField(6);

  @$pb.TagNumber(7)
  ClientInfo get clientInfo => $_getN(6);
  @$pb.TagNumber(7)
  set clientInfo(ClientInfo v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasClientInfo() => $_has(6);
  @$pb.TagNumber(7)
  void clearClientInfo() => clearField(7);
  @$pb.TagNumber(7)
  ClientInfo ensureClientInfo() => $_ensure(6);
}

class UserRegisterReply extends $pb.GeneratedMessage {
  factory UserRegisterReply({
    $core.String? token,
    UserInfo? data,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  UserRegisterReply._() : super();
  factory UserRegisterReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRegisterReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserRegisterReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aOM<UserInfo>(2, _omitFieldNames ? '' : 'data', subBuilder: UserInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRegisterReply clone() => UserRegisterReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRegisterReply copyWith(void Function(UserRegisterReply) updates) => super.copyWith((message) => updates(message as UserRegisterReply)) as UserRegisterReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserRegisterReply create() => UserRegisterReply._();
  UserRegisterReply createEmptyInstance() => create();
  static $pb.PbList<UserRegisterReply> createRepeated() => $pb.PbList<UserRegisterReply>();
  @$core.pragma('dart2js:noInline')
  static UserRegisterReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRegisterReply>(create);
  static UserRegisterReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  UserInfo get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(UserInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  UserInfo ensureData() => $_ensure(1);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClientInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'client_type', $pb.PbFieldType.OU3, protoName: 'clientType')
    ..aOS(2, _omitFieldNames ? '' : 'device_fingerprint', protoName: 'deviceFingerprint')
    ..aOS(3, _omitFieldNames ? '' : 'cpu_architecture', protoName: 'CPUArchitecture')
    ..aOS(4, _omitFieldNames ? '' : 'ips', protoName: 'IPs')
    ..aOS(5, _omitFieldNames ? '' : 'kernel_type', protoName: 'KernelType')
    ..aOS(6, _omitFieldNames ? '' : 'kernel_vision', protoName: 'KernelVersion')
    ..aOS(7, _omitFieldNames ? '' : 'product_name', protoName: 'ProductName')
    ..aOS(8, _omitFieldNames ? '' : 'user_home_directory', protoName: 'UserHomeDirectory')
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

class UserLoginReq extends $pb.GeneratedMessage {
  factory UserLoginReq({
    $core.String? account,
    $core.String? password,
    $core.String? captcha,
    $core.String? captchaId,
    ClientInfo? clientInfo,
  }) {
    final $result = create();
    if (account != null) {
      $result.account = account;
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
    if (clientInfo != null) {
      $result.clientInfo = clientInfo;
    }
    return $result;
  }
  UserLoginReq._() : super();
  factory UserLoginReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLoginReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserLoginReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'account')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'captcha')
    ..aOS(4, _omitFieldNames ? '' : 'captcha_id')
    ..aOM<ClientInfo>(5, _omitFieldNames ? '' : 'client_info', protoName: 'clientInfo', subBuilder: ClientInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLoginReq clone() => UserLoginReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLoginReq copyWith(void Function(UserLoginReq) updates) => super.copyWith((message) => updates(message as UserLoginReq)) as UserLoginReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLoginReq create() => UserLoginReq._();
  UserLoginReq createEmptyInstance() => create();
  static $pb.PbList<UserLoginReq> createRepeated() => $pb.PbList<UserLoginReq>();
  @$core.pragma('dart2js:noInline')
  static UserLoginReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLoginReq>(create);
  static UserLoginReq? _defaultInstance;

  /// oneof login {
  ///   string mobile = 1 [json_name = "mobile", (grpc.gateway.protoc_gen_openapiv2.options.openapiv2_field) = { description: "手机号码"}];
  ///   string mail = 2 [json_name = "mail", (grpc.gateway.protoc_gen_openapiv2.options.openapiv2_field) = { description: "邮箱"}];
  /// }
  @$pb.TagNumber(1)
  $core.String get account => $_getSZ(0);
  @$pb.TagNumber(1)
  set account($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get captcha => $_getSZ(2);
  @$pb.TagNumber(3)
  set captcha($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCaptcha() => $_has(2);
  @$pb.TagNumber(3)
  void clearCaptcha() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get captchaId => $_getSZ(3);
  @$pb.TagNumber(4)
  set captchaId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCaptchaId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCaptchaId() => clearField(4);

  @$pb.TagNumber(5)
  ClientInfo get clientInfo => $_getN(4);
  @$pb.TagNumber(5)
  set clientInfo(ClientInfo v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasClientInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearClientInfo() => clearField(5);
  @$pb.TagNumber(5)
  ClientInfo ensureClientInfo() => $_ensure(4);
}

class UserLoginBySmsReq extends $pb.GeneratedMessage {
  factory UserLoginBySmsReq({
    $core.String? account,
    $core.String? code,
    $core.String? captcha,
    $core.String? captchaId,
    ClientInfo? clientInfo,
  }) {
    final $result = create();
    if (account != null) {
      $result.account = account;
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
    if (clientInfo != null) {
      $result.clientInfo = clientInfo;
    }
    return $result;
  }
  UserLoginBySmsReq._() : super();
  factory UserLoginBySmsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLoginBySmsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserLoginBySmsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'account')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..aOS(3, _omitFieldNames ? '' : 'captcha')
    ..aOS(4, _omitFieldNames ? '' : 'captcha_id')
    ..aOM<ClientInfo>(5, _omitFieldNames ? '' : 'client_info', protoName: 'clientInfo', subBuilder: ClientInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLoginBySmsReq clone() => UserLoginBySmsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLoginBySmsReq copyWith(void Function(UserLoginBySmsReq) updates) => super.copyWith((message) => updates(message as UserLoginBySmsReq)) as UserLoginBySmsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLoginBySmsReq create() => UserLoginBySmsReq._();
  UserLoginBySmsReq createEmptyInstance() => create();
  static $pb.PbList<UserLoginBySmsReq> createRepeated() => $pb.PbList<UserLoginBySmsReq>();
  @$core.pragma('dart2js:noInline')
  static UserLoginBySmsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLoginBySmsReq>(create);
  static UserLoginBySmsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get account => $_getSZ(0);
  @$pb.TagNumber(1)
  set account($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);

  /// string mobile = 1 [json_name = "mobile", (grpc.gateway.protoc_gen_openapiv2.options.openapiv2_field) = { description: "手机号码"}];
  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get captcha => $_getSZ(2);
  @$pb.TagNumber(3)
  set captcha($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCaptcha() => $_has(2);
  @$pb.TagNumber(3)
  void clearCaptcha() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get captchaId => $_getSZ(3);
  @$pb.TagNumber(4)
  set captchaId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCaptchaId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCaptchaId() => clearField(4);

  @$pb.TagNumber(5)
  ClientInfo get clientInfo => $_getN(4);
  @$pb.TagNumber(5)
  set clientInfo(ClientInfo v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasClientInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearClientInfo() => clearField(5);
  @$pb.TagNumber(5)
  ClientInfo ensureClientInfo() => $_ensure(4);
}

class UserLoginReply extends $pb.GeneratedMessage {
  factory UserLoginReply({
    $core.String? token,
    UserInfo? data,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  UserLoginReply._() : super();
  factory UserLoginReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLoginReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserLoginReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aOM<UserInfo>(2, _omitFieldNames ? '' : 'data', subBuilder: UserInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLoginReply clone() => UserLoginReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLoginReply copyWith(void Function(UserLoginReply) updates) => super.copyWith((message) => updates(message as UserLoginReply)) as UserLoginReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLoginReply create() => UserLoginReply._();
  UserLoginReply createEmptyInstance() => create();
  static $pb.PbList<UserLoginReply> createRepeated() => $pb.PbList<UserLoginReply>();
  @$core.pragma('dart2js:noInline')
  static UserLoginReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLoginReply>(create);
  static UserLoginReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  UserInfo get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(UserInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  UserInfo ensureData() => $_ensure(1);
}

class UserInfoReq extends $pb.GeneratedMessage {
  factory UserInfoReq({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  UserInfoReq._() : super();
  factory UserInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfoReq clone() => UserInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfoReq copyWith(void Function(UserInfoReq) updates) => super.copyWith((message) => updates(message as UserInfoReq)) as UserInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserInfoReq create() => UserInfoReq._();
  UserInfoReq createEmptyInstance() => create();
  static $pb.PbList<UserInfoReq> createRepeated() => $pb.PbList<UserInfoReq>();
  @$core.pragma('dart2js:noInline')
  static UserInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoReq>(create);
  static UserInfoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class UserInfoReply extends $pb.GeneratedMessage {
  factory UserInfoReply({
    UserInfo? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  UserInfoReply._() : super();
  factory UserInfoReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfoReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserInfoReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..aOM<UserInfo>(1, _omitFieldNames ? '' : 'data', subBuilder: UserInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfoReply clone() => UserInfoReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfoReply copyWith(void Function(UserInfoReply) updates) => super.copyWith((message) => updates(message as UserInfoReply)) as UserInfoReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserInfoReply create() => UserInfoReply._();
  UserInfoReply createEmptyInstance() => create();
  static $pb.PbList<UserInfoReply> createRepeated() => $pb.PbList<UserInfoReply>();
  @$core.pragma('dart2js:noInline')
  static UserInfoReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoReply>(create);
  static UserInfoReply? _defaultInstance;

  @$pb.TagNumber(1)
  UserInfo get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(UserInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  UserInfo ensureData() => $_ensure(0);
}

class UserStatusUpdateReq extends $pb.GeneratedMessage {
  factory UserStatusUpdateReq({
    $core.String? uuid,
    $core.bool? enabled,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    if (enabled != null) {
      $result.enabled = enabled;
    }
    return $result;
  }
  UserStatusUpdateReq._() : super();
  factory UserStatusUpdateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserStatusUpdateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserStatusUpdateReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..aOB(2, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserStatusUpdateReq clone() => UserStatusUpdateReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserStatusUpdateReq copyWith(void Function(UserStatusUpdateReq) updates) => super.copyWith((message) => updates(message as UserStatusUpdateReq)) as UserStatusUpdateReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserStatusUpdateReq create() => UserStatusUpdateReq._();
  UserStatusUpdateReq createEmptyInstance() => create();
  static $pb.PbList<UserStatusUpdateReq> createRepeated() => $pb.PbList<UserStatusUpdateReq>();
  @$core.pragma('dart2js:noInline')
  static UserStatusUpdateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserStatusUpdateReq>(create);
  static UserStatusUpdateReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get enabled => $_getBF(1);
  @$pb.TagNumber(2)
  set enabled($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnabled() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnabled() => clearField(2);
}

class UserStatusUpdateReply extends $pb.GeneratedMessage {
  factory UserStatusUpdateReply({
    $core.String? msg,
  }) {
    final $result = create();
    if (msg != null) {
      $result.msg = msg;
    }
    return $result;
  }
  UserStatusUpdateReply._() : super();
  factory UserStatusUpdateReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserStatusUpdateReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserStatusUpdateReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserStatusUpdateReply clone() => UserStatusUpdateReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserStatusUpdateReply copyWith(void Function(UserStatusUpdateReply) updates) => super.copyWith((message) => updates(message as UserStatusUpdateReply)) as UserStatusUpdateReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserStatusUpdateReply create() => UserStatusUpdateReply._();
  UserStatusUpdateReply createEmptyInstance() => create();
  static $pb.PbList<UserStatusUpdateReply> createRepeated() => $pb.PbList<UserStatusUpdateReply>();
  @$core.pragma('dart2js:noInline')
  static UserStatusUpdateReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserStatusUpdateReply>(create);
  static UserStatusUpdateReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get msg => $_getSZ(0);
  @$pb.TagNumber(1)
  set msg($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => clearField(1);
}

class GuestCheckReq extends $pb.GeneratedMessage {
  factory GuestCheckReq({
    ClientInfo? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  GuestCheckReq._() : super();
  factory GuestCheckReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GuestCheckReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GuestCheckReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..aOM<ClientInfo>(1, _omitFieldNames ? '' : 'data', subBuilder: ClientInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GuestCheckReq clone() => GuestCheckReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GuestCheckReq copyWith(void Function(GuestCheckReq) updates) => super.copyWith((message) => updates(message as GuestCheckReq)) as GuestCheckReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GuestCheckReq create() => GuestCheckReq._();
  GuestCheckReq createEmptyInstance() => create();
  static $pb.PbList<GuestCheckReq> createRepeated() => $pb.PbList<GuestCheckReq>();
  @$core.pragma('dart2js:noInline')
  static GuestCheckReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GuestCheckReq>(create);
  static GuestCheckReq? _defaultInstance;

  @$pb.TagNumber(1)
  ClientInfo get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(ClientInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  ClientInfo ensureData() => $_ensure(0);
}

class GuestCheckReply extends $pb.GeneratedMessage {
  factory GuestCheckReply({
    $core.String? msg,
    $fixnum.Int64? id,
    $fixnum.Int64? code,
  }) {
    final $result = create();
    if (msg != null) {
      $result.msg = msg;
    }
    if (id != null) {
      $result.id = id;
    }
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  GuestCheckReply._() : super();
  factory GuestCheckReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GuestCheckReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GuestCheckReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'msg')
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..aInt64(3, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GuestCheckReply clone() => GuestCheckReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GuestCheckReply copyWith(void Function(GuestCheckReply) updates) => super.copyWith((message) => updates(message as GuestCheckReply)) as GuestCheckReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GuestCheckReply create() => GuestCheckReply._();
  GuestCheckReply createEmptyInstance() => create();
  static $pb.PbList<GuestCheckReply> createRepeated() => $pb.PbList<GuestCheckReply>();
  @$core.pragma('dart2js:noInline')
  static GuestCheckReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GuestCheckReply>(create);
  static GuestCheckReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get msg => $_getSZ(0);
  @$pb.TagNumber(1)
  set msg($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get code => $_getI64(2);
  @$pb.TagNumber(3)
  set code($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
