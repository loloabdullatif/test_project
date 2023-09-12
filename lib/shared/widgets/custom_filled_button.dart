import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    this.labelColor,
    required this.onTap,
    this.backgroundColor,
    this.height,
    this.width = double.infinity,
    this.loadingColor = Colors.white,
    this.useShadow = true,
    this.borderRadiusValue = 15,
    required this.child,
  });

  final Color? labelColor;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final double? height;
  final double width;
  final Color loadingColor;
  final dynamic child;
  final bool useShadow;
  final double borderRadiusValue;

  //Getters
  BorderRadius get borderRadius => BorderRadius.circular(borderRadiusValue);
  double get _kDefaultHeight => 58;
  @override
  Widget build(BuildContext context) {
    return _buildContainer(
      context,
      child: Center(
        child: _buildChild(),
      ),
    );
  }

  Widget _buildContainer(BuildContext context, {required Widget child}) {
    return Container(
      height: height ?? _kDefaultHeight,
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        boxShadow: useShadow == true
            ? [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 12,
                  color: Theme.of(context).colorScheme.shadow.withOpacity(.08),
                ),
              ]
            : null,
      ),
      child: Material(
        color: backgroundColor ?? Theme.of(context).colorScheme.primary,
        elevation: 0,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius,
          child: child,
        ),
      ),
    );
  }

  Widget _buildChild() {
    assert(child is String || child is Widget,
        'Expected a widget or string for the child of the CustomFilledButton');
    if (child is String) {
      return Text(
        child,
        style: TextStyle(
          color: labelColor,
          fontSize: 17,
        ),
      );
    }
    return child;
  }
}

class CustomBorderedButton extends StatelessWidget {
  const CustomBorderedButton({
    super.key,
    required this.onTap,
    this.backgroundColor,
    this.height,
    this.width = double.infinity,
    this.loadingColor = Colors.white,
    this.useShadow = true,
    this.borderRadiusValue = 15,
    required this.child,
  });

  final VoidCallback onTap;
  final Color? backgroundColor;
  final double? height;
  final double width;
  final Color loadingColor;
  final dynamic child;
  final bool useShadow;
  final double borderRadiusValue;

  //Getters
  BorderRadius get borderRadius => BorderRadius.circular(borderRadiusValue);
  double get _kDefaultHeight => 58;
  @override
  Widget build(BuildContext context) {
    return _buildContainer(
      context,
      child: Center(
        child: _buildChild(context),
      ),
    );
  }

  Widget _buildContainer(BuildContext context, {required Widget child}) {
    return Container(
      height: height ?? _kDefaultHeight,
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all(
          color: backgroundColor ?? Theme.of(context).colorScheme.primary,
          width: 1.5,
        ),
        boxShadow: useShadow == true
            ? [
                BoxShadow(
                  offset: const Offset(0, 4),
                  blurRadius: 12,
                  color: Theme.of(context).colorScheme.shadow.withOpacity(.08),
                ),
              ]
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        elevation: 0,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius,
          child: child,
        ),
      ),
    );
  }

  Widget _buildChild(BuildContext context) {
    assert(child is String || child is Widget,
        'Expected a widget or string for the child of the CustomFilledButton');
    if (child is String) {
      return Text(
        child,
        style: TextStyle(
          color: backgroundColor ?? Theme.of(context).colorScheme.primary,
          fontSize: 17,
        ),
      );
    }
    return child;
  }
}
