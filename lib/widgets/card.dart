import 'package:fluent_ui/fluent_ui.dart';

BoxDecoration _boxDecorationForLight = BoxDecoration(
    color: const Color.fromARGB(255, 251, 251, 251),
    border: Border.all(color: const Color.fromARGB(255, 208, 208, 208)),
    borderRadius: BorderRadius.circular(4.0));

BoxDecoration _boxDecorationForDark = BoxDecoration(
    color: const Color.fromARGB(255, 41, 41, 41),
    border: Border.all(color: const Color.fromARGB(255, 58, 58, 58)),
    borderRadius: BorderRadius.circular(4.0));

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.width,
    required this.height,
    required this.child,
  });

  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      width: width,
      height: height,
      decoration: FluentTheme.of(context).brightness.isDark
          ? _boxDecorationForDark
          : _boxDecorationForLight,
      child: child,
    );
  }
}
