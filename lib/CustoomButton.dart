import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String? text;
  final Color? color;
  final Color? textColor;
  final Icon? icon;
   final Color? borderColor; 
  final double? borderWidth; 
  final Image? image;
  final VoidCallback? onPressed;


  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
    this.icon,
    this.borderColor, 
    this.borderWidth, 
    this.image,
    this.onPressed

  });

  @override
  State<CustomButton> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.color,
          foregroundColor: widget.textColor,
          minimumSize: const Size(double.infinity, 60),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: widget.borderColor ?? Colors.white, 
            width: widget.borderWidth ?? 1,
          ),
        ),
          textStyle: const TextStyle(
            fontSize: 18,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.icon != null) ...[
              widget.icon!,
              SizedBox(width: 8),
            ],
            if (widget.image != null) ...[
              widget.image!,
              SizedBox(width: 8),
            ],
            Text(widget.text!),
          ],
        ),
      ),
    );
  }
}