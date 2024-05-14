import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yunzhou_vpn_desktop/router/current_route_provider.dart';
import 'package:yunzhou_vpn_desktop/views/about.dart';
import 'package:yunzhou_vpn_desktop/views/acceleration.dart';
import 'package:yunzhou_vpn_desktop/views/confirmation.dart';
import 'package:yunzhou_vpn_desktop/views/coupons.dart';
import 'package:yunzhou_vpn_desktop/views/mode_selection.dart';
import 'package:yunzhou_vpn_desktop/views/profile.dart';
import 'package:yunzhou_vpn_desktop/views/purchase.dart';
import 'package:yunzhou_vpn_desktop/views/route_selection.dart';
import 'package:yunzhou_vpn_desktop/widgets/sidebar.dart';

/// App 路由配置，在 [MaterialApp] 中使用。
///
/// 包裹在 [ShellRoute] 中的路由段，左侧固定显示一个侧边栏。
final router = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return CurrentRouteProvider(
          currentRoutePath: state.uri.toString(),
          child: Row(
            children: [
              const Sidebar(),
              Expanded(child: child),
            ],
          ),
        );
      },
      routes: [
        GoRoute(
          path: '/',
          redirect: (context, state) => '/acceleration',
        ),
        GoRoute(
          path: '/acceleration',
          name: 'acceleration',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: AccelerationView(),
          ),
          routes: [
            GoRoute(
              path: 'route-selection',
              name: 'route-selection',
              builder: (context, state) => const RouteSelection(),
            ),
            GoRoute(
              path: 'mode-selection',
              name: 'mode-selection',
              builder: (context, state) => const ModeSelectionView(),
            )
          ],
        ),
        GoRoute(
          path: '/purchase',
          name: 'purchase',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: PurchaseView(),
          ),
          routes: [
            GoRoute(
              path: 'confirmation',
              name: 'confirmation',
              builder: (context, state) {
                final planString = state.uri.queryParameters['plan']!;
                final plan = SubscriptionPlan.fromString(planString);
                return ConfirmationView(plan: plan);
              },
            ),
          ],
        ),
        GoRoute(
          path: '/profile',
          name: 'profile',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: ProfileView(),
          ),
          routes: [
            GoRoute(
              path: 'coupons',
              name: 'coupons',
              builder: (context, state) => const CouponsView(),
            ),
            GoRoute(
              path: 'downloads',
              name: 'downloads',
              builder: (context, state) => const Placeholder(),
            ),
            GoRoute(
              path: 'about',
              name: 'about',
              builder: (context, state) => const AboutView(),
            ),
          ],
        ),
      ],
    ),
  ],
);
