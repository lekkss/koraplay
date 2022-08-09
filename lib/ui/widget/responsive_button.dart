import 'package:flutter/material.dart';
import 'package:koraplay/ui/widget/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;
  final void Function()? onPressed;
  const ResponsiveButton({
    Key? key,
    this.isResponsive = false,
    this.width = 120,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
          ),
          width: isResponsive == true ? double.infinity : width,
          height: 50,
          child: Row(
            mainAxisAlignment: isResponsive == true
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              isResponsive == true
                  ? Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: const AppText(
                        text: "Get Started",
                        color: Colors.white,
                      ),
                    )
                  : Container(
                      child: const AppText(
                        text: "Get Started",
                        color: Colors.white,
                      ),
                    ),
              // Image.asset("img/button-one.png"),
            ],
          ),
        ),
      ),
    );
  }
}
