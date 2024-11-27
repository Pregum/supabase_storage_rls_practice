// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:path/path.dart' as path;
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// class FileDropdown<T extends String> extends HookWidget {
//   final T defaultValue;
//   final Iterable<T> items;
//   final Function(T)? onChanged;

//   const FileDropdown({
//     super.key,
//     required this.defaultValue,
//     required this.items,
//     this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final value = useState(defaultValue);

//     return Column(
//       children: [
//         DropdownButton<T>(
//           value: value.value,
//           items: [
//             for (final item in items)
//               DropdownMenuItem(
//                 value: item,
//                 child: Text(item.toString()),
//               ),
//           ],
//           onChanged: (newValue) {
//             if (newValue == null) {
//               return;
//             }
//             value.value = newValue;
//             onChanged?.call(newValue);
//           },
//         ),
//         switch (path.extension(value.value)) {
//           '.png' => Image.asset(
//               value.value,
//               fit: BoxFit.cover,
//             ),
//           '.pdf' => AspectRatio(
//               aspectRatio: 3 / 4, // pdfの下半分見切れ防止にアスペクト比を指定している
//               child: SfPdfViewer.asset(value.value),
//             ),
//           _ => Container(),
//         },
//       ],
//     );
//   }
// }
