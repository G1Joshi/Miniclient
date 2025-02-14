import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  const Error({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) => Center(
        child: Text(message),
      );
}

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) => const Center(
        child: CircularProgressIndicator(),
      );
}

class Divider extends StatelessWidget {
  const Divider({
    super.key,
    this.height = 1.0,
    this.color,
    this.thickness = 1.0,
    this.indent = 0.0,
    this.endIndent = 0.0,
  });

  final double height;
  final Color? color;
  final double thickness;
  final double indent;
  final double endIndent;

  @override
  Widget build(BuildContext context) => Container(
        height: height,
        margin: EdgeInsetsDirectional.only(
          start: indent,
          end: endIndent,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: color ?? Theme.of(context).dividerColor,
              width: thickness,
            ),
          ),
        ),
      );
}

class EmptyState extends StatelessWidget {
  const EmptyState({
    super.key,
    required this.message,
    this.icon,
    this.action,
  });

  final String message;
  final IconData? icon;
  final Widget? action;

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                size: 48,
                color: Theme.of(context).disabledColor,
              ),
              const SizedBox(height: 16),
            ],
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            if (action != null) ...[
              const SizedBox(height: 16),
              action!,
            ],
          ],
        ),
      );
}

class Spacer extends StatelessWidget {
  const Spacer({
    super.key,
    this.width = 0,
    this.height = 0,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: width,
        height: height,
      );
}
