import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:yunzhou_vpn_desktop/router/current_route_provider.dart';
import 'package:yunzhou_vpn_desktop/widgets/yunzhou_logo.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    bool checkRouteIsActive(String route) {
      final currentPath = CurrentRouteProvider.of(context)?.currentRoutePath;
      return currentPath?.contains(route) ?? false;
    }

    return Container(
      width: 100,
      color: const Color(0xFF0B1327),
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: DefaultTextStyle(
        style: textTheme.bodySmall!.copyWith(
          color: Colors.white.withOpacity(0.4),
        ),
        child: Column(
          children: [
            const YunZhouLogo(),
            const Spacer(),
            NavItem(
              isActive: checkRouteIsActive('acceleration'),
              icon: 'assets/svgs/sidebar_acceleration.svg',
              label: '加速',
              onTap: () => context.goNamed('acceleration'),
            ),
            NavItem(
              isActive: checkRouteIsActive('purchase'),
              icon: 'assets/svgs/sidebar_vip.svg',
              label: '会员',
              onTap: () => context.goNamed('purchase'),
            ),
            NavItem(
              isActive: checkRouteIsActive('profile'),
              icon: 'assets/svgs/sidebar_profile.svg',
              label: '我的',
              onTap: () => context.goNamed('profile'),
            ),
            const Spacer(),
            const Column(
              children: [
                Text('版本号'),
                SizedBox(height: 10),
                Text('v0.10'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NavItem extends HookWidget {
  const NavItem({
    super.key,
    this.onTap,
    required this.isActive,
    required this.icon,
    required this.label,
  });

  final Function()? onTap;
  final bool isActive;
  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final isHovered = useState(false);
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 50),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isHovered.value
                ? Colors.white.withOpacity(0.04)
                : Colors.transparent,
          ),
          child: Column(
            children: [
              SvgPicture.asset(
                icon,
                width: 32,
                height: 32,
                colorFilter: ColorFilter.mode(
                  isActive
                      ? const Color(0xFF42FBF5)
                      : Colors.white.withOpacity(0.4),
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                label,
                style: TextStyle(
                  color: Colors.white.withOpacity(
                    isActive ? 1 : 0.4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
