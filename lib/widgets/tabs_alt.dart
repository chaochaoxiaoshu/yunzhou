import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yunzhou_vpn_desktop/widgets/layout.dart';

class TabsAlt extends HookWidget {
  const TabsAlt({
    super.key,
    required this.value,
    required this.items,
    this.onChange,
  });

  final int value;
  final List<String> items;
  final Function(int)? onChange;

  @override
  Widget build(BuildContext context) {
    final selection = useState(value);
    return SpacingRow(
      spacing: 48,
      children: items.asMap().entries.map((item) {
        final index = item.key;
        final val = item.value;
        return TabItem(
          onTap: () {
            selection.value = index;
            onChange != null ? onChange!(index) : null;
          },
          isActive: index == selection.value,
          label: val,
        );
      }).toList(),
    );
  }
}

class TabItem extends StatelessWidget {
  const TabItem({
    super.key,
    this.onTap,
    required this.isActive,
    required this.label,
  });

  final Function()? onTap;
  final bool isActive;
  final String label;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.only(bottom: 4),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: isActive ? const Color(0xFF42FBF5) : Colors.transparent,
                width: 4,
              ),
            ),
          ),
          child: Text(
            label,
            style: textTheme.bodyMedium!.copyWith(
              color: isActive ? Colors.black : const Color(0xFF999999),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
