import 'package:flutter/material.dart';
import 'package:yunzhou_vpn_desktop/widgets/gradient_button.dart';
import 'package:yunzhou_vpn_desktop/widgets/page_scaffold.dart';
import 'package:yunzhou_vpn_desktop/widgets/tabs.dart';
import 'package:yunzhou_vpn_desktop/widgets/title_bar.dart';

class CouponsView extends StatelessWidget {
  const CouponsView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      titleBar: const TitleBar(
        title: '我的优惠券',
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Column(
          children: [
            Container(
              color: const Color(0xFF050913),
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Tabs(
                    initialValue: 0,
                    items: ['优惠券', '兑换券'],
                  ),
                  Material(
                    type: MaterialType.transparency,
                    child: GradientButton(
                      label: Text('活动码兑换'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
