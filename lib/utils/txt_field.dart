import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TxtField extends StatelessWidget {
  final String? headTxt, labelText, hintText, errorText;
  final TextEditingController? controller;
  final int? maxLines, minLines, maxLength;
  final dynamic onTap;
  final double? cursorHeight;

  final BoxDecoration? decoration;
  final Function(String?)? onSaved, onChanged;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon, prefixIcon;

  final EdgeInsets? contentPadding;

  final bool? readOnly, filled, border;
  final Color? fillColor;
  final TextStyle? style;
  final bool? enabled;

  const TxtField(
      {Key? key,
      this.headTxt,
      this.enabled,
      this.cursorHeight,
      this.contentPadding,
      this.decoration,
      this.controller,
      this.labelText,
      this.errorText,
      this.inputFormatters,
      this.keyboardType,
      this.maxLength,
      this.minLines,
      this.maxLines,
      this.onSaved,
      this.onChanged,
      this.readOnly,
      this.onTap,
      this.suffixIcon,
      this.prefixIcon,
      this.hintText,
      this.border = true,
      this.filled,
      this.fillColor,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onTap: onTap,
        style: style ??
            const TextStyle(
              color: Colors.black,
            ),
        onChanged: onChanged,
        inputFormatters: inputFormatters,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        maxLines: maxLines,
        minLines: minLines,
        maxLength: maxLength,
        controller: controller,
        onSaved: onSaved,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            fillColor: fillColor ?? Colors.white,
            filled: filled ?? true,
            errorStyle: const TextStyle(color: Colors.red),
            errorText: errorText,
            counter: const Offstage(),
            labelStyle: const TextStyle(
                fontSize: 18,
                // fontWeight: FontWeight.bold,
                color: Colors.black),
            labelText: labelText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            contentPadding: contentPadding));
  }
}
