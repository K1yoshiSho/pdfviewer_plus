import 'package:flutter/material.dart';

/// Customized checkbox
class PdfCheckbox extends StatefulWidget {
  /// Constructor of PdfCheckbox
  const PdfCheckbox(
      {Key? key,
      required this.isChecked,
      required this.onChanged,
      this.fillColor,
      this.size = 24.0})
      : super(key: key);

  /// Indicates whether checkbox is checked or unchecked.
  final bool isChecked;

  /// Checkbox on changed
  final ValueChanged<bool?>? onChanged;

  /// Checkbox fill color
  final Color? fillColor;

  /// Checkbox size
  final double size;

  @override
  _PdfCheckboxState createState() => _PdfCheckboxState();
}

class _PdfCheckboxState extends State<PdfCheckbox> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.onChanged!(!widget.isChecked);
        });
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration:
            BoxDecoration(color: widget.fillColor ?? Colors.transparent),
        child: widget.isChecked
            ? Icon(
                Icons.check_outlined,
                size: widget.size,
                color: Colors.black,
              )
            : Container(),
      ),
    );
  }
}
