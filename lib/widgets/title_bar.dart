import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:yunzhou_vpn_desktop/router/current_route_provider.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    super.key,
    this.title,
    this.titleView,
  });

  final String? title;
  final Widget? titleView;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    bool isShowBackButton() {
      final currentPath = CurrentRouteProvider.of(context)?.currentRoutePath;
      return RegExp(r'/').allMatches(currentPath!).length >= 2;
    }

    Widget renderBackButton() {
      if (!isShowBackButton()) return const SizedBox();

      return Row(
        children: [
          IconButton(
            onPressed: () => context.pop(),
            icon: SvgPicture.asset(
              'assets/svgs/arrow_left.svg',
              width: 16,
              height: 10,
            ),
          ),
          const SizedBox(width: 24),
        ],
      );
    }

    Widget renderTitle() {
      final titleTextStyle = textTheme.bodyMedium!.copyWith(
        color: Colors.white,
      );

      if (titleView != null) {
        return DefaultTextStyle(
          style: titleTextStyle,
          child: titleView!,
        );
      }
      if (title == null) return const SizedBox();

      return Text(
        title!,
        style: titleTextStyle,
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      height: 56,
      color: const Color(0xFF050913),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          renderBackButton(),
          renderTitle(),
        ],
      ),
    );
  }
}
