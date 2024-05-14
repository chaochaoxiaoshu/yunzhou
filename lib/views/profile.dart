import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yunzhou_vpn_desktop/widgets/gradient_button.dart';
import 'package:yunzhou_vpn_desktop/widgets/layout.dart';
import 'package:yunzhou_vpn_desktop/widgets/page_scaffold.dart';
import 'package:yunzhou_vpn_desktop/widgets/profile.dart';
import 'package:yunzhou_vpn_desktop/widgets/title_bar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      titleBar: const TitleBar(),
      body: Column(
        children: [
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GradientButton(
                  label: Row(
                    children: [Text('邀请码奖励')],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 112),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Profile(),
                    Image.asset(
                      'assets/images/coupon_banner.png',
                      width: 338,
                      height: 80,
                    )
                  ],
                ),
                const SizedBox(height: 48),
                SpacingRow(
                  spacing: 16,
                  children: [
                    Expanded(
                      child: ProfileActionCard(
                        onTap: () => context.goNamed('coupons'),
                        icon: const AssetImage('assets/images/my_coupon.png'),
                        title: '我的优惠券',
                      ),
                    ),
                    Expanded(
                      child: ProfileActionCard(
                        onTap: () => {},
                        icon: const AssetImage('assets/images/downloads.png'),
                        title: '多终端下载',
                      ),
                    ),
                    Expanded(
                      child: ProfileActionCard(
                        onTap: () => context.goNamed('about'),
                        icon: const AssetImage('assets/images/about.png'),
                        title: '关于云舟',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileActionCard extends StatelessWidget {
  const ProfileActionCard({
    super.key,
    this.onTap,
    required this.icon,
    required this.title,
  });

  final Function()? onTap;
  final ImageProvider icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      type: MaterialType.card,
      color: const Color(0xFF0B1327),
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Column(
          children: [
            const SizedBox(height: 48),
            Image(image: icon, width: 80, height: 80),
            const SizedBox(height: 48),
            Text(title, style: textTheme.bodyLarge),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
