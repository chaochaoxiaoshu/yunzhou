import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yunzhou_vpn_desktop/models/acceleration.dart';
import 'package:yunzhou_vpn_desktop/models/acceleration_mode.dart';
import 'package:yunzhou_vpn_desktop/widgets/my_checkbox.dart';
import 'package:yunzhou_vpn_desktop/widgets/page_scaffold.dart';
import 'package:yunzhou_vpn_desktop/widgets/title_bar.dart';
import 'package:yunzhou_vpn_desktop/widgets/layout.dart';

class ModeSelectionView extends StatelessWidget {
  const ModeSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return PageScaffold(
      titleBar: const TitleBar(
        title: '加速模式',
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Consumer<AccelerationProvider>(
          builder: (context, model, child) {
            return Column(
              children: [
                DefaultTextStyle(
                  style: textTheme.bodyMedium!,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        const Text('当前选择：'),
                        Text(
                          model.mode.title,
                          style: const TextStyle(
                            color: Color(0xFF42FBF5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SpacingRow(
                  spacing: 12,
                  children: AccelerationMode.values.map((mode) {
                    return ModeCard(
                      onTap: () => Provider.of<AccelerationProvider>(
                        context,
                        listen: false,
                      ).updateMode(mode),
                      isActive: mode == model.mode,
                      icon: mode.icon,
                      label: mode.title,
                    );
                  }).toList(),
                ),
                Expanded(
                  child: [
                    const SmartModeView(),
                    AppGridView(
                      title: AccelerationMode.auto.title,
                      description: AccelerationMode.auto.description,
                      children: [
                        AppItemCard(
                          icon: const AssetImage('assets/images/us.png'),
                          title: 'Google Chrome',
                          trailing: Switch(
                            value: true,
                            onChanged: (val) {},
                          ),
                        ),
                        AppItemCard(
                          icon: const AssetImage('assets/images/us.png'),
                          title: 'Google Chrome',
                          trailing: Switch(
                            value: true,
                            onChanged: (val) {},
                          ),
                        ),
                        AppItemCard(
                          icon: const AssetImage('assets/images/us.png'),
                          title: 'Google Chrome',
                          trailing: Switch(
                            value: true,
                            onChanged: (val) {},
                          ),
                        ),
                        AppItemCard(
                          icon: const AssetImage('assets/images/us.png'),
                          title: 'Google Chrome',
                          trailing: Switch(
                            value: true,
                            onChanged: (val) {},
                          ),
                        )
                      ],
                    ),
                    AppGridView(
                      title: AccelerationMode.manual.title,
                      description: AccelerationMode.manual.description,
                      children: const [
                        AppItemCard(
                          icon: AssetImage('assets/images/us.png'),
                          title: 'Google Chrome',
                          trailing: AppItemStatusIndicatorButton(
                            isActive: true,
                          ),
                        ),
                        AppItemCard(
                          icon: AssetImage('assets/images/us.png'),
                          title: 'Google Chrome',
                          trailing: AppItemStatusIndicatorButton(
                            isActive: true,
                          ),
                        ),
                        AppItemCard(
                          icon: AssetImage('assets/images/us.png'),
                          title: 'Google Chrome',
                          trailing: AppItemStatusIndicatorButton(
                            isActive: false,
                          ),
                        ),
                        AppItemCard(
                          icon: AssetImage('assets/images/us.png'),
                          title: 'Google Chrome',
                          trailing: AppItemStatusIndicatorButton(
                            isActive: false,
                          ),
                        ),
                      ],
                    ),
                    const GlobalModeView(),
                  ][model.mode.index],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class ModeCard extends StatelessWidget {
  const ModeCard({
    super.key,
    this.onTap,
    required this.isActive,
    required this.icon,
    required this.label,
  });

  final Function()? onTap;
  final bool isActive;
  final ImageProvider icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Material(
              color: const Color(0xFF0B1327),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  color:
                      isActive ? const Color(0xFF42FBF5) : Colors.transparent,
                  width: 1,
                ),
              ),
              child: InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    children: [
                      Image(
                        image: icon,
                        width: 32,
                        height: 32,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        label,
                        style: textTheme.bodyMedium!.copyWith(
                          color:
                              isActive ? const Color(0xFF42FBF5) : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child:
                isActive ? const MyCheckbox(checked: true) : const SizedBox(),
          )
        ],
      ),
    );
  }
}

class ModeHeader extends StatelessWidget {
  const ModeHeader({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          Text(
            title,
            style: textTheme.titleSmall,
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: textTheme.labelLarge!.copyWith(
              color: Colors.white.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}

class SmartModeView extends StatelessWidget {
  const SmartModeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ModeHeader(
          title: AccelerationMode.smart.title,
          description: AccelerationMode.smart.description,
        ),
        Image.asset(
          'assets/images/china_map.png',
          width: 381,
          height: 275,
        ),
      ],
    );
  }
}

class AppGridView extends StatelessWidget {
  const AppGridView({
    super.key,
    required this.title,
    required this.description,
    required this.children,
  });

  final String title;
  final String description;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ModeHeader(
          title: title,
          description: description,
        ),
        Expanded(
            child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 273 / 56,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: children,
        ))
      ],
    );
  }
}

class AppItemCard extends StatelessWidget {
  const AppItemCard({
    super.key,
    required this.icon,
    required this.title,
    required this.trailing,
  });

  final ImageProvider icon;
  final String title;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      type: MaterialType.card,
      color: const Color(0xFF0B1327),
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: CircleAvatar(foregroundImage: icon),
            ),
            const SizedBox(width: 16),
            Text(
              title,
              style: textTheme.bodyMedium,
            ),
            const Spacer(),
            trailing,
          ],
        ),
      ),
    );
  }
}

class AppItemStatusIndicatorButton extends StatelessWidget {
  const AppItemStatusIndicatorButton({
    super.key,
    this.onTap,
    required this.isActive,
  });

  final Function()? onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onTap,
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        ),
        backgroundColor: MaterialStatePropertyAll(
          isActive ? const Color(0xFF42FBF5) : const Color(0xFF2E3E68),
        ),
        foregroundColor: MaterialStatePropertyAll(
          isActive ? const Color(0xFF050913) : Colors.white,
        ),
      ),
      child: Text(isActive ? '启动' : '关闭'),
    );
  }
}

class GlobalModeView extends StatelessWidget {
  const GlobalModeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ModeHeader(
          title: AccelerationMode.global.title,
          description: AccelerationMode.global.description,
        ),
        Image.asset(
          'assets/images/global.png',
          width: 506,
          height: 276,
        )
      ],
    );
  }
}
