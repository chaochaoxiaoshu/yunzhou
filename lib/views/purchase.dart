import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yunzhou_vpn_desktop/widgets/page_scaffold.dart';
import 'package:yunzhou_vpn_desktop/widgets/profile.dart';
import 'package:yunzhou_vpn_desktop/widgets/title_bar.dart';

class PurchaseView extends StatelessWidget {
  const PurchaseView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return PageScaffold(
      titleBar: TitleBar(
        titleView: Row(
          children: [
            const SizedBox(width: 16),
            Text(
              '不限速防拥堵，享受专属加速线路就来参加充值优惠活动吧！',
              style: textTheme.bodySmall,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              type: MaterialType.card,
              color: const Color(0xFF0B1327),
              borderRadius: BorderRadius.circular(8),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Profile()],
                ),
              ),
            ),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/purchase_icon_0.png',
                      width: 32,
                      height: 32,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '国内外加速全球游戏',
                      style: textTheme.bodySmall!.copyWith(
                        color: const Color(0xFFD5C087),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/purchase_icon_1.png',
                      width: 32,
                      height: 32,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '全面支持电脑、手机、主机平台游戏',
                      style: textTheme.bodySmall!.copyWith(
                        color: const Color(0xFFD5C087),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/purchase_icon_2.png',
                      width: 32,
                      height: 32,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '超低价格服务',
                      style: textTheme.bodySmall!.copyWith(
                        color: const Color(0xFFD5C087),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Ink.image(
                  image: const AssetImage('assets/images/purchase_card_0.png'),
                  width: 141,
                  height: 184,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () => context.goNamed(
                      'confirmation',
                      queryParameters: {'plan': 'annually'},
                    ),
                  ),
                ),
                Ink.image(
                  image: const AssetImage('assets/images/purchase_card_1.png'),
                  width: 141,
                  height: 184,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () => context.goNamed(
                      'confirmation',
                      queryParameters: {'plan': 'biannually'},
                    ),
                  ),
                ),
                Ink.image(
                  image: const AssetImage('assets/images/purchase_card_2.png'),
                  width: 141,
                  height: 184,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () => context.goNamed(
                      'confirmation',
                      queryParameters: {'plan': 'quarterly'},
                    ),
                  ),
                ),
                Ink.image(
                  image: const AssetImage('assets/images/purchase_card_3.png'),
                  width: 141,
                  height: 184,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () => context.goNamed(
                      'confirmation',
                      queryParameters: {'plan': 'monthly'},
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}
