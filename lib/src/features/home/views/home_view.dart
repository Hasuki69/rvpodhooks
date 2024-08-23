import 'package:exposed/exposed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/shared.dart';
import '../../../core/core.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  static const routeName = '/home';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final slider = useState(.0);
    final rangeSlider = useState(const RangeValues(.5, 1));

    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Column(children: [
              Text('Label Small', style: context.labelSmall),
              Text('Label Medium', style: context.labelMedium),
              Text('Label Large', style: context.labelLarge),
            ]),
            const Divider().padSymmetric(vert: Gap.s),
            Column(children: [
              Text('Body Small', style: context.bodySmall),
              // By default, it's the same as bodyMedium
              Text('Body Medium', style: context.bodyMedium),
              Text('Body Large', style: context.bodyLarge),
            ]),
            const Divider().padSymmetric(vert: Gap.s),
            Column(children: [
              Text('Title Small', style: context.titleSmall),
              Text('Title Medium', style: context.titleMedium),
              Text('Title Large', style: context.titleLarge),
            ]),
            const Divider().padSymmetric(vert: Gap.s),
            Column(children: [
              Text('Heading Small', style: context.headlineSmall),
              Text('heading Medium', style: context.headlineMedium),
              Text('Heading Large', style: context.headlineLarge),
            ]),
            const Divider().padSymmetric(vert: Gap.s),
            Column(children: [
              Text('Display Small', style: context.displaySmall),
              Text('Display Medium', style: context.displayMedium),
              Text('Display Large', style: context.displayLarge),
            ]),
            const Divider().padSymmetric(vert: Gap.l),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text('Date Format', style: context.titleMedium),
                      Text(DateTime.now().format()),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text('Currency Format', style: context.titleMedium),
                      Text(100.25.toCurrency()),
                      Text(25.toUSD()),
                      Text(150000.toIDR()),
                      Text(25000.toIDR(useSymbol: true)),
                    ],
                  ),
                ),
              ],
            ),
            const Divider().padSymmetric(vert: Gap.l),
            Slider(
              value: slider.value,
              onChanged: (val) => slider.value = val,
            ),
            RangeSlider(
              values: rangeSlider.value,
              onChanged: (val) => rangeSlider.value = val,
            ),
            const Divider().padSymmetric(vert: Gap.l),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text('Elevated icon'),
                      ),
                      FilledButton.tonalIcon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text('Filled tonal icon'),
                      ),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text('Outline icon'),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text('Text icon'),
                      ),
                      IconButton.filledTonal(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                      IconButton.outlined(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text('Elevated icon'),
                      ),
                      FilledButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text('Filled icon'),
                      ),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text('Outline icon'),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text('Text icon'),
                      ),
                      IconButton.filled(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                      IconButton.outlined(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider().padSymmetric(vert: Gap.l),
            const Card(child: ListTile()),
            const Divider().padSymmetric(vert: Gap.l),
            TextFormField(),
            const Divider().padSymmetric(vert: Gap.l),
            const Card(child: AspectRatio(aspectRatio: 1)),
          ]),
        ),
      ],
    );
  }
}
