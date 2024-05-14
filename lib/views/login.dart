import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:grpc/grpc.dart';
import 'package:provider/provider.dart';
import 'package:yunzhou_vpn_desktop/helpers/error_handle.dart';
import 'package:yunzhou_vpn_desktop/helpers/get_client_info.dart';
import 'package:yunzhou_vpn_desktop/models/grpc_client.dart';
import 'package:yunzhou_vpn_desktop/models/user_info.dart';
import 'package:yunzhou_vpn_desktop/utils/validator.dart';
import 'package:yunzhou_vpn_desktop/output/admin.pb.dart' as admin;
import 'package:yunzhou_vpn_desktop/output/user.pbgrpc.dart' as user;
import 'package:yunzhou_vpn_desktop/widgets/gradient_text.dart';
import 'package:yunzhou_vpn_desktop/widgets/my_checkbox.dart';
import 'package:yunzhou_vpn_desktop/widgets/tabs_alt.dart';

InputDecoration createInputDecoration(
  BuildContext context, {
  required String hintText,
  Widget? suffix,
}) {
  final textTheme = Theme.of(context).textTheme;
  return InputDecoration(
    filled: true,
    fillColor: const Color(0xFFEEEEEE),
    hoverColor: Colors.black.withOpacity(0.04),
    border: InputBorder.none,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    hintStyle: textTheme.bodyMedium!.copyWith(
      color: const Color(0xFFBBBBBB),
    ),
    hintText: hintText,
    contentPadding: const EdgeInsets.all(16),
    suffixIcon: suffix != null
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [suffix, const SizedBox(width: 16)],
          )
        : const SizedBox(),
    suffixIconConstraints: const BoxConstraints(
      maxHeight: 16,
    ),
  );
}

class LoginModal extends HookWidget {
  const LoginModal({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final tabSelection = useState(0);

    final userClient = GrpcClient.shared.userClient;

    final formKey = useMemoized(GlobalKey<FormState>.new, const []);

    final email = useState('');
    final mobile = useState('');
    final password = useState('');

    final savePassword = useState(true);

    void handleLogin() async {
      if (!formKey.currentState!.validate()) {
        return;
      }
      final clientInfo = await getClientInfo();
      final req = user.UserLoginReq(
        account: tabSelection.value == 0 ? email.value : mobile.value,
        password: password.value,
        clientInfo: clientInfo,
      );
      try {
        final res = await userClient.userLogin(req);
        if (!context.mounted) return;
        final userInfo = getUserInfoProvider(context);
        userInfo.token = res.token;
        userInfo.uuid = res.data.uuid;
        userInfo.memberId = res.data.memberId.toString();
        context.pop();
      } on GrpcError catch (e) {
        if (!context.mounted) return;
        context.pop();
        showErrorMessage(context, errorMsg: e.message ?? '');
      }
    }

    return Center(
      child: SizedBox(
        width: 384,
        child: Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF42FBF5),
              brightness: Brightness.light,
            ),
          ),
          child: Material(
            type: MaterialType.card,
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 24,
              ),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '登录',
                          style: textTheme.bodyLarge!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        IconButton(
                          visualDensity: VisualDensity.compact,
                          onPressed: () => context.pop(),
                          style: const ButtonStyle(
                            padding: MaterialStatePropertyAll(EdgeInsets.zero),
                          ),
                          icon: const Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      height: 40,
                      color: Color(0xFFEEEEEE),
                    ),
                    TabsAlt(
                      onChange: (value) => tabSelection.value = value,
                      value: tabSelection.value,
                      items: const ['邮箱登录', '手机号登录'],
                    ),
                    const SizedBox(height: 24),
                    tabSelection.value == 0
                        ? Column(
                            children: [
                              TextFormField(
                                onChanged: (value) => email.value = value,
                                validator: (value) =>
                                    Validator.validateEmail(value),
                                style: textTheme.bodyMedium!.copyWith(
                                  color: Colors.black,
                                ),
                                decoration: createInputDecoration(
                                  context,
                                  hintText: '请输入邮箱账号',
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                obscureText: true,
                                onChanged: (value) => password.value = value,
                                validator: (value) =>
                                    Validator.validatePassword(value),
                                style: textTheme.bodyMedium!.copyWith(
                                  color: Colors.black,
                                ),
                                decoration: createInputDecoration(
                                  context,
                                  hintText: '请输入密码',
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              TextFormField(
                                onChanged: (value) => mobile.value = value,
                                validator: (value) =>
                                    Validator.validateMobile(value),
                                style: textTheme.bodyMedium!.copyWith(
                                  color: Colors.black,
                                ),
                                decoration: createInputDecoration(
                                  context,
                                  hintText: '请输入手机号',
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                obscureText: true,
                                onChanged: (value) => password.value = value,
                                validator: (value) =>
                                    Validator.validatePassword(value),
                                style: textTheme.bodyMedium!.copyWith(
                                  color: Colors.black,
                                ),
                                decoration: createInputDecoration(
                                  context,
                                  hintText: '请输入密码',
                                ),
                              ),
                            ],
                          ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => savePassword.value = !savePassword.value,
                          child: Row(
                            children: [
                              MyCheckbox(checked: savePassword.value),
                              const SizedBox(width: 8),
                              Text(
                                '记住密码',
                                style: textTheme.bodyMedium!.copyWith(
                                  color: const Color(0xFF999999),
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          '忘记密码？',
                          style: textTheme.bodyMedium!.copyWith(
                            color: const Color(0xFF0B1327),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: handleLogin,
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 48),
                        backgroundColor: const Color(0xFF42FBF5),
                        foregroundColor: Colors.black,
                        shadowColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        textStyle: textTheme.bodyMedium,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: const Text('登录'),
                    ),
                    const SizedBox(height: 8),
                    OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor: const MaterialStatePropertyAll(
                          Colors.black,
                        ),
                        visualDensity: VisualDensity.adaptivePlatformDensity,
                        minimumSize: const MaterialStatePropertyAll(
                          Size(double.infinity, 48),
                        ),
                        side: const MaterialStatePropertyAll(
                          BorderSide(color: Color(0xFFEEEEEE)),
                        ),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        textStyle: MaterialStatePropertyAll(
                          textTheme.bodyMedium!.copyWith(color: Colors.white),
                        ),
                      ),
                      child: const Text('使用 Google 登录'),
                    ),
                    const SizedBox(height: 24),
                    TextButton(
                      onPressed: () {
                        context.pop();
                        showDialog(
                          context: context,
                          builder: (context) => const RegisterModal(),
                        );
                      },
                      style: const ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(
                          Colors.transparent,
                        ),
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.all(0),
                        ),
                      ),
                      child: GradientText(
                        '没有账号？立即注册',
                        gradient: const LinearGradient(
                          colors: [Color(0xFF6A85F4), Color(0xFF42FBF5)],
                        ),
                        style: textTheme.bodyMedium,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterModal extends HookWidget {
  const RegisterModal({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final userClient = GrpcClient.shared.userClient;
    final adminClient = GrpcClient.shared.adminClient;

    final tabSelection = useState(0);

    final sendMsgCodeButtonKey =
        useMemoized(GlobalKey<_SendMsgCodeButtonState>.new, const []);
    final formKey = useMemoized(GlobalKey<FormState>.new, const []);
    final mobileFieldkey = useMemoized(GlobalKey<FormFieldState>.new, const []);

    final email = useState('');
    final mobile = useState('');
    final password = useState('');
    final captcha = useState('');
    final captchaId = useState('');

    void handleSendMsgCode() async {
      if (!mobileFieldkey.currentState!.validate()) {
        return;
      }
      try {
        sendMsgCodeButtonKey.currentState!.startTimer();
        final res = await adminClient
            .sMSCaptcha(admin.SMSCaptchaRequest(mobile: mobile.value));
        captchaId.value = res.result.captchaId;
      } on GrpcError catch (e) {
        if (!context.mounted) return;
        showErrorMessage(context, errorMsg: e.message ?? '');
      }
    }

    void handleRegister() async {
      if (!formKey.currentState!.validate()) {
        return;
      }
      final clientInfo = await getClientInfo();
      final req = user.UserRegisterReq(
        account: tabSelection.value == 0 ? email.value : mobile.value,
        password: password.value,
        username: DateTime.now().toString(),
        captcha: captcha.value,
        captchaId: captchaId.value,
        clientInfo: clientInfo,
      );
      try {
        final res = await userClient.userRegister(req);
        if (!context.mounted) return;
        final userInfo = Provider.of<UserInfoProvider>(context, listen: false);
        userInfo.token = res.token;
        userInfo.uuid = res.data.uuid;
        userInfo.memberId = res.data.memberId.toString();
        context.pop();
      } on GrpcError catch (e) {
        if (!context.mounted) return;
        context.pop();
        showErrorMessage(context, errorMsg: e.message ?? '');
      }
    }

    return Center(
      child: SizedBox(
        width: 384,
        child: Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF42FBF5),
              brightness: Brightness.light,
            ),
          ),
          child: Material(
            type: MaterialType.card,
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 24,
              ),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '注册',
                          style: textTheme.bodyLarge!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        IconButton(
                          visualDensity: VisualDensity.compact,
                          onPressed: () => context.pop(),
                          style: const ButtonStyle(
                            padding: MaterialStatePropertyAll(EdgeInsets.zero),
                          ),
                          icon: const Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      height: 40,
                      color: Color(0xFFEEEEEE),
                    ),
                    TabsAlt(
                      value: tabSelection.value,
                      items: const ['邮箱注册', '手机号注册'],
                      onChange: (val) => tabSelection.value = val,
                    ),
                    const SizedBox(height: 24),
                    tabSelection.value == 0
                        ? Column(
                            children: [
                              TextFormField(
                                onChanged: (value) => email.value = value,
                                validator: (value) =>
                                    Validator.validateEmail(value),
                                style: textTheme.bodyMedium!.copyWith(
                                  color: Colors.black,
                                ),
                                decoration: createInputDecoration(
                                  context,
                                  hintText: '请输入邮箱账号',
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                validator: (value) =>
                                    Validator.validateMailCode(value),
                                style: textTheme.bodyMedium!.copyWith(
                                  color: Colors.black,
                                ),
                                decoration: createInputDecoration(
                                  context,
                                  hintText: '请输入邮箱验证码',
                                  suffix: SendMsgCodeButton(
                                    key: sendMsgCodeButtonKey,
                                    onTap: () {},
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                obscureText: true,
                                onChanged: (value) => password.value = value,
                                validator: (value) =>
                                    Validator.validatePassword(value),
                                style: textTheme.bodyMedium!.copyWith(
                                  color: Colors.black,
                                ),
                                decoration: createInputDecoration(
                                  context,
                                  hintText: '请设置新密码',
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              TextFormField(
                                key: mobileFieldkey,
                                validator: (value) =>
                                    Validator.validateMobile(value),
                                onChanged: (value) => mobile.value = value,
                                style: textTheme.bodyMedium!.copyWith(
                                  color: Colors.black,
                                ),
                                decoration: createInputDecoration(
                                  context,
                                  hintText: '请输入手机号',
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                validator: (value) =>
                                    Validator.validateMsgCode(value),
                                onChanged: (value) => captcha.value = value,
                                style: textTheme.bodyMedium!.copyWith(
                                  color: Colors.black,
                                ),
                                decoration: createInputDecoration(
                                  context,
                                  hintText: '请输入短信验证码',
                                  suffix: SendMsgCodeButton(
                                    key: sendMsgCodeButtonKey,
                                    onTap: handleSendMsgCode,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                obscureText: true,
                                validator: (value) =>
                                    Validator.validatePassword(value),
                                onChanged: (value) => password.value = value,
                                style: textTheme.bodyMedium!.copyWith(
                                  color: Colors.black,
                                ),
                                decoration: createInputDecoration(
                                  context,
                                  hintText: '请设置新密码',
                                ),
                              ),
                            ],
                          ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: handleRegister,
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 48),
                        backgroundColor: const Color(0xFF42FBF5),
                        foregroundColor: Colors.black,
                        shadowColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        textStyle: textTheme.bodyMedium,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: const Text('注册'),
                    ),
                    const SizedBox(height: 24),
                    TextButton(
                      onPressed: () {
                        context.pop();
                        showDialog(
                          context: context,
                          builder: (context) => const LoginModal(),
                        );
                      },
                      style: const ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(
                          Colors.transparent,
                        ),
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.all(0),
                        ),
                      ),
                      child: GradientText(
                        '已有账号？立即登录',
                        gradient: const LinearGradient(
                          colors: [Color(0xFF6A85F4), Color(0xFF42FBF5)],
                        ),
                        style: textTheme.bodyMedium,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SendMsgCodeButton extends StatefulWidget {
  const SendMsgCodeButton({
    super.key,
    this.onTap,
  });

  final Function()? onTap;

  @override
  State<SendMsgCodeButton> createState() => _SendMsgCodeButtonState();
}

class _SendMsgCodeButtonState extends State<SendMsgCodeButton> {
  // ignore: unused_field
  Timer? _timer;
  int _start = 60;
  bool _disabled = false;

  void startTimer() {
    _disabled = true;
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      if (_start == 0) {
        setState(() {
          timer.cancel();
          _disabled = false;
          _start = 60;
        });
      } else {
        setState(() {
          _start -= 1;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MouseRegion(
      cursor: _disabled ? SystemMouseCursors.basic : SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          if (_disabled || widget.onTap == null) return;
          widget.onTap!();
        },
        child: Text(
          _disabled ? '$_start秒后重试' : '发送',
          style: textTheme.bodyMedium!.copyWith(
            color: _disabled ? Colors.black.withOpacity(0.4) : Colors.black,
          ),
        ),
      ),
    );
  }
}
