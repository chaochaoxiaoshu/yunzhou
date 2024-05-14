class Validator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return '请输入邮箱';
    } else if (!value.contains('@')) {
      return '请输入正确的邮箱';
    }
    return null;
  }

  static String? validateMobile(String? value) {
    if (value == null || value.isEmpty) {
      return '请输入手机号';
    } else if (!RegExp(r'^1[3-9]\d{9}$').hasMatch(value)) {
      return '请输入正确的手机号';
    }
    return null;
  }

  static String? validateMailCode(String? value) {
    if (value == null || value.isEmpty) {
      return '请输入邮箱验证码';
    } else if (!RegExp(r'^\d{5}$').hasMatch(value)) {
      return '请输入5位数邮箱验证码';
    }
    return null;
  }

  static String? validateMsgCode(String? value) {
    if (value == null || value.isEmpty) {
      return '请输入短信验证码';
    } else if (!RegExp(r'^\d{5}$').hasMatch(value)) {
      return '请输入5位数短信验证码';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return '请输入密码';
    }
    return null;
  }
}
