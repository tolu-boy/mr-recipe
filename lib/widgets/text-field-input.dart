import 'package:flutter/material.dart';
import 'package:mr_receipe/widgets/pallete.dart';

class TextInputField extends StatelessWidget {
  const TextInputField(
      {
      @required this.icon,
      @required this.hint,
      this.inputType,
      this.inputAction,
      this.ontap});

  final IconData? icon;
  final String ?hint;
  final TextInputType ?inputType;
  final TextInputAction ?inputAction;
  final dynamic ontap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.grey[500]
          // .withOpacity(0.5)
          ,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: TextField(
            onChanged: ontap,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  icon,
                  size: 28,
                  color: kWhite,
                ),
              ),
              hintText: hint,
              hintStyle: kBodyText,
            ),
            style: kBodyText,
            keyboardType: inputType,
            textInputAction: inputAction,
          ),
        ),
      ),
    );
  }
}
