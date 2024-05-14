import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yunzhou_vpn_desktop/models/acceleration.dart';
import 'package:yunzhou_vpn_desktop/models/acceleration_route.dart';
import 'package:yunzhou_vpn_desktop/models/acceleration_status.dart';
import 'package:yunzhou_vpn_desktop/models/xray.dart';
import 'package:yunzhou_vpn_desktop/widgets/my_checkbox.dart';
import 'package:yunzhou_vpn_desktop/widgets/page_scaffold.dart';
import 'package:yunzhou_vpn_desktop/widgets/tabs.dart';
import 'package:yunzhou_vpn_desktop/widgets/title_bar.dart';

class RouteSelection extends StatelessWidget {
  const RouteSelection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return PageScaffold(
      titleBar: const TitleBar(title: '线路选择'),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Tabs(
                    initialValue: 0,
                    items: ['VIP专区', '免费专区'],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        const MyCheckbox(checked: true),
                        const SizedBox(width: 8),
                        Text(
                          '自动选择',
                          style: textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Image.asset(
                          'assets/images/auto.png',
                          width: 16,
                          height: 16,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Material(
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFF0B1327),
                child: ListView.separated(
                  itemCount: AccelerationRoute.accelerationRoutes.length,
                  separatorBuilder: (context, index) {
                    return ColoredBox(
                      color: const Color(0xFF0B1327),
                      child: Container(
                        height: 1.5,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        color: Colors.white.withOpacity(0.08),
                      ),
                    );
                  },
                  itemBuilder: (context, index) {
                    return RouteSelectionListItem(
                      route: AccelerationRoute.accelerationRoutes[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RouteSelectionListItem extends StatelessWidget {
  const RouteSelectionListItem({
    super.key,
    required this.route,
  });

  final AccelerationRoute route;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Consumer<AccelerationProvider>(
      builder: (context, model, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            dividerColor: Colors.transparent,
          ),
          child: ExpansionTile(
            initiallyExpanded: model.route == route,
            expansionAnimationStyle: AnimationStyle(
              curve: Curves.easeOutCubic,
              duration: const Duration(milliseconds: 200),
              reverseCurve: Curves.easeInCubic,
              reverseDuration: const Duration(milliseconds: 200),
            ),
            leading: SizedBox(
              width: 24,
              height: 24,
              child: CircleAvatar(foregroundImage: route.icon),
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: route.renderTitle(context),
            ),
            subtitle: Text(
              route.description,
              style: textTheme.labelLarge!.copyWith(
                color: Colors.white.withOpacity(0.4),
              ),
            ),
            tilePadding: const EdgeInsets.all(16),
            children: [
              ListTile(
                onTap: () {
                  Provider.of<AccelerationProvider>(
                    context,
                    listen: false,
                  ).updateRoute(route: route);
                },
                leading: Image.asset(
                  'assets/images/auto_highlight.png',
                  width: 16,
                  height: 16,
                ),
                title: Text(
                  '线路组内自动选择',
                  style: textTheme.bodyMedium,
                ),
                trailing: Radio(
                  value: model.subRouteIndex == null && model.route == route,
                  groupValue: true,
                  onChanged: (val) {
                    Provider.of<AccelerationProvider>(
                      context,
                      listen: false,
                    ).updateRoute(route: route);
                    if (model.status == AccelerationStatus.connected) {
                      XrayProvider.shared.changeService(
                        configName: route.configName,
                      );
                    }
                  },
                ),
                visualDensity: VisualDensity.compact,
                contentPadding: const EdgeInsets.only(left: 16, right: 12),
              ),
              ...List.generate(route.subRouteCount, (index) {
                return ListTile(
                  onTap: () {
                    final model = Provider.of<AccelerationProvider>(
                      context,
                      listen: false,
                    );
                    model.updateRoute(
                      route: route,
                      subRouteIndex: index,
                    );
                  },
                  leading: Image.asset(
                    'assets/images/crown.png',
                    width: 16,
                    height: 16,
                  ),
                  title: DefaultTextStyle(
                    style: textTheme.bodyMedium!,
                    child: Row(
                      children: [
                        route.renderTitle(context),
                        const SizedBox(width: 8),
                        Text('线路 ${index + 1}'),
                      ],
                    ),
                  ),
                  trailing: Radio(
                    value: model.subRouteIndex == index && model.route == route,
                    groupValue: true,
                    onChanged: (val) {
                      Provider.of<AccelerationProvider>(
                        context,
                        listen: false,
                      ).updateRoute(
                        route: route,
                        subRouteIndex: index,
                      );
                      if (model.status == AccelerationStatus.connected) {
                        XrayProvider.shared.changeService(
                          configName: route.configName,
                        );
                      }
                    },
                  ),
                  visualDensity: VisualDensity.compact,
                  contentPadding: const EdgeInsets.only(left: 16, right: 12),
                );
              })
            ],
          ),
        );
      },
    );
  }
}
