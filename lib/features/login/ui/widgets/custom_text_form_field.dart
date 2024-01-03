import 'package:flutter/material.dart';
import 'package:bestdoctorappointmentapp/core/constant/input_decoration.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  final String text;

  CustomTextFormField({
    Key? key,
    required this.text,
    this.controller,
    this.onChanged,
  }) : super(key: key);
  TextEditingController? controller;
  void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        decoration: customInputDecoration(hintText: text),
        keyboardType: TextInputType.text,
        obscureText: false,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'يرجى إدخال قيمة';
          }
          return null;
        },
      ),
    );
  }
}
