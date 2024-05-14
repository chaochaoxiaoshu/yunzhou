import 'package:flutter/material.dart';
import 'package:yunzhou_vpn_desktop/widgets/page_scaffold.dart';
import 'package:yunzhou_vpn_desktop/widgets/title_bar.dart';
import 'package:yunzhou_vpn_desktop/widgets/yunzhou_logo.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageScaffold(
      titleBar: TitleBar(
        title: '关于云舟',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          YunZhouLogo(size: 58),
          SizedBox(height: 18),
          Text(
            'v0.10',
            style: TextStyle(fontSize: 24, height: 1),
          ),
          SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('云舟官方网站：'),
              Text('https://www.iconfont.cn/'),
            ],
          ),
          SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('《隐私政策》'),
              SizedBox(width: 48),
              Text('《服务协议》'),
            ],
          ),
        ],
      ),
    );
  }
}
