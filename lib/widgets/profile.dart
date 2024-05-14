import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:provider/provider.dart';
import 'package:yunzhou_vpn_desktop/helpers/error_handle.dart';
import 'package:yunzhou_vpn_desktop/models/grpc_client.dart';
import 'package:yunzhou_vpn_desktop/models/user_info.dart';
import 'package:yunzhou_vpn_desktop/output/admin.pb.dart';
import 'package:yunzhou_vpn_desktop/views/login.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final adminClient = GrpcClient.shared.adminClient;
    final userInfo = getUserInfoProvider(context);

    void handleLogout() async {
      try {
        await adminClient.logout(LogoutRequest(
          userUuid: userInfo.uuid,
        ));
        userInfo.reset();
      } on GrpcError catch (e) {
        if (!context.mounted) return;
        showErrorMessage(context, errorMsg: e.message ?? '');
      }
    }

    return Consumer<UserInfoProvider>(
      builder: (context, userInfo, child) {
        return InkWell(
          onTap: () => showDialog(
            context: context,
            builder: (context) => const LoginModal(),
          ),
          splashFactory: NoSplash.splashFactory,
          overlayColor: const MaterialStatePropertyAll(Colors.transparent),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
            child: Row(
              children: [
                const SizedBox(
                  width: 38,
                  height: 38,
                  child: CircleAvatar(),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    userInfo.isLogged
                        ? Text('云舟ID：${userInfo.memberId}')
                        : Text(
                            userInfo.guestId.isNotEmpty
                                ? '游客ID: ${userInfo.guestId}'
                                : '请登录',
                          ),
                    SizedBox(height: userInfo.isLogged ? 8 : 0),
                    // userInfo.isLogged
                    //     ? Row(
                    //         children: [
                    //           Image.asset(
                    //             'assets/images/crown_outline.png',
                    //             width: 16,
                    //             height: 16,
                    //           ),
                    //           const SizedBox(width: 8),
                    //           Text(
                    //             '会员到期：2024-04-29 12:00',
                    //             style: textTheme.bodySmall!.copyWith(
                    //               color: const Color(0xFFD5C087),
                    //             ),
                    //           )
                    //         ],
                    //       )
                    //     : const SizedBox(),
                    // SizedBox(height: userInfo.isLogged ? 16 : 0),
                    userInfo.isLogged
                        ? FilledButton(
                            onPressed: handleLogout,
                            child: const Text('退出登录'),
                          )
                        : const SizedBox()
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
