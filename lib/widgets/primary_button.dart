import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF5D4016),
        foregroundColor: const Color(0xFFFFEACC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), // padding controls size now
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 18,
          fontFamily: 'Young Serif',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const SecondaryButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color(0xFF5D4016),
        backgroundColor: const Color(0xFFFFEACC),// text color
        side: const BorderSide(color: Color(0xFF5D4016), width: 1), // border
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 18,
          fontFamily: 'Young Serif',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
