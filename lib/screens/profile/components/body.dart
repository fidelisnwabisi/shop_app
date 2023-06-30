import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 115,
          width: 115,
          child: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.expand,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/me.jpg"),
              ),
              Positioned(
                right: -12,
                bottom: 0,
                child: SizedBox(
                  height: 46,
                  width: 46,
                  child: ElevatedButton(
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                    child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
