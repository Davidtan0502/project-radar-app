import 'package:flutter/material.dart';


class SocialLoginButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onPressed;

  const SocialLoginButton({
    required this.icon,
    required this.label,
    required this.color,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        foregroundColor: color,
        side: BorderSide(color: color),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 12),
      ),
      icon: Icon(icon, size: 24),
      label: Text(label),
      onPressed: onPressed,
    );
  }
}