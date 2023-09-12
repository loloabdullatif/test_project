import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.leadingIcon,
    this.hintText,
    this.label,
    this.color = const Color(0xFF435AF9),
    this.obscureText = false,
    this.suffixIcon,
    this.suffixIconOnTap,
  });

  final IconData leadingIcon;
  final String? hintText;
  final String? label;
  final Color color;
  final IconData? suffixIcon;
  final VoidCallback? suffixIconOnTap;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(color: color),
      decoration: InputDecoration(
        fillColor: const Color(0xFFF0F0F4),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: color),
        ),
        hintText: hintText,
        label: label != null
            ? Text(
                label!,
                style: TextStyle(color: color),
              )
            : null,
        prefixIcon: Icon(
          leadingIcon,
          color: color,
        ),
        suffixIcon: InkWell(
          onTap: suffixIconOnTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              suffixIcon,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
