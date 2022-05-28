import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FlashMessageScreen extends StatelessWidget {
  const FlashMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: CustomSnakbar(),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ));
        },
        child: const Text("Show Message"),
      )),
    );
  }
}

class CustomSnakbar extends StatelessWidget {

  const CustomSnakbar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(

      clipBehavior: Clip.none,
      children: [
        Container(
            padding: const EdgeInsets.all(16),
            height: 90,
            decoration: BoxDecoration(
                color: const Color(0xFF0c7040),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                const SizedBox(width: 48),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Oh snap!",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      Spacer(),
                      Text(
                        "Hello, Im (Iqrar Ijaz) a Flutter Developer.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ],
            )),
        Positioned(
          bottom:0,
          child: ClipRRect(
            borderRadius:const BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
            child: SvgPicture.asset("assets/icons/bubbles.svg",
            height:48,
            width:40,
            color:const Color(0xff004e32)),
          ),
        ),
    Positioned(
      top: -20,
      left:0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset("assets/icons/fail.svg",
          height:40),
          Positioned(
            top:10,
            child: SvgPicture.asset("assets/icons/close.svg",
                height:16),
          ),
        ],
      ),
    )
      ],
    );
  }
}
