import 'package:flutter/material.dart';
import 'package:yunzhou_vpn_desktop/widgets/layout.dart';
import 'package:yunzhou_vpn_desktop/widgets/page_scaffold.dart';
import 'package:yunzhou_vpn_desktop/widgets/tabs.dart';
import 'package:yunzhou_vpn_desktop/widgets/title_bar.dart';

enum SubscriptionPlan {
  monthly,
  quarterly,
  biannually,
  annually;

  String get name {
    const names = {
      SubscriptionPlan.monthly: '月度会员',
      SubscriptionPlan.quarterly: '季度会员',
      SubscriptionPlan.biannually: '半年会员',
      SubscriptionPlan.annually: '年度会员',
    };
    return names[this]!;
  }

  double get price {
    const prices = {
      SubscriptionPlan.monthly: 25.00,
      SubscriptionPlan.quarterly: 67.00,
      SubscriptionPlan.biannually: 120.00,
      SubscriptionPlan.annually: 225.00,
    };
    return prices[this]!;
  }

  @override
  String toString() {
    const matcher = {
      SubscriptionPlan.monthly: 'monthly',
      SubscriptionPlan.quarterly: 'quarterly',
      SubscriptionPlan.biannually: 'biannually',
      SubscriptionPlan.annually: 'annually',
    };
    return matcher[this] as String;
  }

  static SubscriptionPlan fromString(String str) {
    const matcher = {
      'monthly': SubscriptionPlan.monthly,
      'quarterly': SubscriptionPlan.quarterly,
      'biannually': SubscriptionPlan.biannually,
      'annually': SubscriptionPlan.annually,
    };
    return matcher[str] as SubscriptionPlan;
  }
}

class ConfirmationView extends StatelessWidget {
  const ConfirmationView({
    super.key,
    required this.plan,
  });

  final SubscriptionPlan plan;

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      titleBar: TitleBar(
        title: plan.name,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SpacingColumn(
          spacing: 16,
          children: [
            Material(
              type: MaterialType.card,
              color: const Color(0xFF0B1327),
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CurrentPlan(plan: plan),
                    const CurrentCoupon(),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Material(
                type: MaterialType.card,
                color: const Color(0xFF0B1327),
                borderRadius: BorderRadius.circular(8),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 16, bottom: 14),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Colors.white.withOpacity(0.1),
                          ),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Tabs(
                            initialValue: 0,
                            items: ['微信支付', '支付宝支付', 'PayPal'],
                          )
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 35, bottom: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PayQRCode(),
                            SizedBox(width: 24),
                            PayInfoCard()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CurrentPlan extends StatelessWidget {
  const CurrentPlan({
    super.key,
    required this.plan,
  });

  final SubscriptionPlan plan;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Image.asset(
          'assets/images/${plan.toString()}_icon.png',
          width: 40,
          height: 40,
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '购买产品：${plan.name}',
              style: textTheme.bodySmall!.copyWith(
                color: const Color(0xFFD5C087),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '购买后会员到期：2026-04-29 12:00',
              style: textTheme.bodySmall!,
            )
          ],
        )
      ],
    );
  }
}

class CurrentCoupon extends StatelessWidget {
  const CurrentCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      color: const Color(0xFF2E3E68),
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Row(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/coupon_icon_orange.png',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 8),
                Text(
                  '使用优惠券',
                  style: textTheme.bodySmall,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PayQRCode extends StatelessWidget {
  const PayQRCode({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 246 / 304,
      child: Stack(
        children: [Image.asset('assets/images/wechat_pay_bg.png')],
      ),
    );
  }
}

class PayInfoCard extends StatelessWidget {
  const PayInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AspectRatio(
      aspectRatio: 384 / 304,
      child: Material(
        type: MaterialType.card,
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFF2E3E68),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: DefaultTextStyle(
                  style: textTheme.bodyMedium!,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PayInfoRow(label: '购买服务：', value: '年度会员'),
                      PayInfoRow(label: '订单金额：', value: '¥488'),
                      PayInfoRow(
                        label: '优惠券：',
                        value: '无',
                        valueTextStyle: TextStyle(
                          color: Color(0xFFFF5151),
                        ),
                      ),
                      PayInfoRow(label: '需付金额：', value: '¥300'),
                      PayInfoRow(label: '支付状态：', value: '未支付'),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
              color: Colors.white.withOpacity(0.1),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 20,
              ),
              child: PayInfoRow(
                label: '总计：',
                value: '¥300',
                valueTextStyle: TextStyle(
                  fontSize: 24,
                  height: 1,
                  color: Color(0xFFFFB600),
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PayInfoRow extends StatelessWidget {
  const PayInfoRow({
    super.key,
    required this.label,
    required this.value,
    this.valueTextStyle,
  });

  final String label;
  final String value;
  final TextStyle? valueTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withOpacity(0.56),
          ),
        ),
        Text(
          value,
          style: valueTextStyle ??
              const TextStyle(
                color: Colors.white,
              ),
        )
      ],
    );
  }
}
