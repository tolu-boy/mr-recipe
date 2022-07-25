import 'package:flutter/material.dart';
import 'package:mr_receipe/widgets/pallete.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
     required this.buttonName,
    this.ontap
  }) ;

  final String buttonName;
  final dynamic ontap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kBlue,
      ),
      child: TextButton(
        onPressed: ontap,
        child: Text(
          buttonName,
          style: kBodyText.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
