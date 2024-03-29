import 'package:flutter/material.dart';

import 'small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({super.key, required this.text});

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String
      firstHalf; // we used late keyword because we wanna it to declare later
  late String secondHalf;

  bool hiddenText = true;
  // double textHeight = Dimensions.screenHeight / 5.63;
  double textHeight = 150;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              // size: Dimensions.font16,
              size: 16,
              height: 1.6,
              text: firstHalf,
              color: Colors.black,
            )
          : Column(
              children: [
                SmallText(
                    // size: Dimensions.font16,
                    size: 16,
                    height: 1.8,
                    // color: AppColors.paraColor,
                    color: Colors.black,
                    text: hiddenText
                        ? ("$firstHalf...")
                        : (firstHalf + secondHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(children: [
                    SmallText(
                      text: hiddenText ? "Show More " : "Show Less ",
                      color: const Color.fromARGB(179, 177, 232, 14),
                    ),
                    Icon(
                      hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      color: const Color.fromARGB(179, 177, 232, 14),
                    )
                  ]),
                ),
              ],
            ),
    );
  }
}
