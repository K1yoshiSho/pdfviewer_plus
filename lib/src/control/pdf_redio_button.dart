import 'package:flutter/material.dart';

/// Customized radio button
class PdfRadioButton extends StatefulWidget {
  /// Constructor for PdfRadioButton
  const PdfRadioButton(
      {Key? key,
      required this.value,
      required this.groupValue,
      required this.onChanged,
      this.fillColor,
      this.size = 24.0})
      : super(key: key);

  /// Radio button value
  final String value;

  /// Radio button groupValue
  final String? groupValue;

  /// Radio button onChanged
  final ValueChanged<String> onChanged;

  /// Radio button fill color
  final Color? fillColor;

  /// Radio button size
  final double size;

  @override
  _PdfRadioButtonState createState() => _PdfRadioButtonState();
}

class _PdfRadioButtonState extends State<PdfRadioButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(widget.value);
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.fillColor ?? Colors.transparent,
        ),
        child: widget.groupValue == widget.value
            ? Icon(
                Icons.circle,
                size: widget.size / 2.0,
                color: Colors.black,
              )
            : Container(),
      ),
    );
  }
}
