import 'package:flutter/material.dart';

class FutureButton extends StatefulWidget {
  final Widget child;
  final RefreshCallback? onPressed;

  const FutureButton({Key? key, required this.child, this.onPressed})
      : super(key: key);

  @override
  State<FutureButton> createState() => _FutureButtonState();
}

class _FutureButtonState extends State<FutureButton> {
  bool _isPressed = false;

  bool get isPressed => _isPressed;

  set isPressed(bool value) {
    _isPressed = value;
    if (mounted) setState(() {});
  }

  bool get enabled {
    return widget.onPressed != null;
  }

  @override
  Widget build(BuildContext context) {
    if (isPressed) {
      return const ElevatedButton(
        onPressed: null,
        child: SizedBox(
          width: 16,
          height: 16.0,
          child: CircularProgressIndicator(
            color: Colors.green,
            strokeWidth: 2.0,
          ),
        ),
      );
    } else {
      return ElevatedButton(
          onPressed: enabled ? onPressed : null, child: widget.child);
    }
  }

  Future<void> onPressed() async {
    try {
      isPressed = true;
      await widget.onPressed?.call();
    } catch (e) {
      // ignore
    } finally {
      isPressed = false;
    }
  }
}
