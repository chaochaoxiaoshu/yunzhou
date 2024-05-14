import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:yunzhou_vpn_desktop/models/acceleration.dart';
import 'package:yunzhou_vpn_desktop/models/acceleration_status.dart';
import 'package:yunzhou_vpn_desktop/models/xray.dart';
import 'package:yunzhou_vpn_desktop/widgets/page_scaffold.dart';
import 'package:yunzhou_vpn_desktop/widgets/title_bar.dart';

class AccelerationView extends StatelessWidget {
  const AccelerationView({super.key});

  @override
  Widget build(BuildContext context) {
    void handleSwitch() async {
      final model = Provider.of<AccelerationProvider>(context, listen: false);
      if (model.status == AccelerationStatus.connecting) return;
      if (model.status == AccelerationStatus.disconnected) {
        model.connect();
        XrayProvider.shared.startService(configName: model.route.configName);
      } else {
        model.disconnect();
        XrayProvider.shared.endService();
      }
    }

    return PageScaffold(
      titleBar: const TitleBar(),
      body: Consumer<AccelerationProvider>(
        builder: (context, model, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AccelerationStatusSwitch(
                onTap: handleSwitch,
                status: model.status,
              ),
              const SizedBox(height: 43),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AccelerationStatusCard(
                    onTap: () => context.goNamed('route-selection'),
                    icon: const AssetImage('assets/images/airplane.png'),
                    label: '当前线路',
                    value: model.route.renderTitle(
                      context,
                      color: Colors.white.withOpacity(0.4),
                    ),
                  ),
                  const SizedBox(width: 128),
                  AccelerationStatusCard(
                    onTap: () => context.goNamed('mode-selection'),
                    icon: const AssetImage('assets/images/grid.png'),
                    label: '加速模式',
                    value: Text(model.mode.title),
                  ),
                ],
              ),
              const SizedBox(height: 43),
            ],
          );
        },
      ),
    );
  }
}

class AccelerationStatusSwitch extends HookWidget {
  const AccelerationStatusSwitch({
    super.key,
    this.onTap,
    required this.status,
  });

  final Function()? onTap;
  final AccelerationStatus status;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    Widget renderLabel() {
      const labels = {
        AccelerationStatus.disconnected: Text('启动'),
        AccelerationStatus.connecting: Text('正在启动...'),
        AccelerationStatus.connected: Text('加速成功'),
      };
      return labels[status] as Widget;
    }

    return MouseRegion(
      onEnter: (_) => animationController.forward(),
      onExit: (_) => animationController.reverse(),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Stack(
          alignment: Alignment.center,
          children: [
            RotationTransition(
              turns: animationController.drive(
                CurveTween(curve: Curves.easeOut),
              ),
              child: Image.asset(
                'assets/images/dashed_circle_f.png',
                width: 300,
                height: 300,
              ),
            ),
            RotationTransition(
              turns: animationController.drive(
                CurveTween(curve: Curves.easeOut),
              ),
              child: Image.asset(
                'assets/images/dashed_circle_i.png',
                width: 211,
                height: 211,
              ),
            ),
            Column(
              children: [
                DefaultTextStyle(
                  style: textTheme.bodyLarge!.copyWith(
                    color: const Color(0xFF42FBF5),
                  ),
                  child: renderLabel(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AccelerationStatusCard extends StatelessWidget {
  const AccelerationStatusCard({
    super.key,
    this.onTap,
    required this.icon,
    required this.label,
    required this.value,
  });

  final Function()? onTap;
  final ImageProvider icon;
  final String label;
  final Widget value;

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
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          constraints: const BoxConstraints(minWidth: 240),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image(
                    width: 18,
                    height: 18,
                    image: icon,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    label,
                    style: textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              DefaultTextStyle(
                style: textTheme.bodyMedium!.copyWith(
                  color: Colors.white.withOpacity(0.4),
                ),
                child: value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
