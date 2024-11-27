import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SimpleDropdown<T extends Object> extends HookWidget {
  final T defaultValue;
  final Iterable<T> items;
  final Function(T)? onChanged;

  const SimpleDropdown({
    super.key,
    required this.defaultValue,
    required this.items,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final value = useState(defaultValue);

    return DropdownButton<T>(
      value: value.value,
      items: [
        for (final item in items)
          DropdownMenuItem(
            value: item,
            child: Text(item.toString()),
          ),
      ],
      onChanged: (newValue) {
        if (newValue == null) {
          return;
        }
        value.value = newValue;
        onChanged?.call(newValue);
      },
    );
  }
}
