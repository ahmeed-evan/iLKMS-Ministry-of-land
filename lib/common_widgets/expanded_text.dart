import 'package:flutter/material.dart';
import 'package:land_gov_flutter/utils/app_style.dart';

class ExpandedText extends StatefulWidget {
  final String text;

  const ExpandedText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandedText> createState() => _ExpandedTextState();
}

class _ExpandedTextState extends State<ExpandedText> {
  late String firstHalf;
  late String secondHalf;
  bool isExpanded = false;

  @override
  void initState() {
    if (widget.text.length > 150) {
      firstHalf = widget.text.substring(0, 150);
      secondHalf = widget.text.substring(151, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return secondHalf == ""
        ? Text(
            widget.text,
            style: AppStyle.normal_text,
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isExpanded ? widget.text : firstHalf,
                style: AppStyle.normal_text,
              ),
              TextButton.icon(
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                icon: Text(
                  "See More...",
                  style: AppStyle.normal_text.copyWith(color: Colors.blueAccent),
                ),
                label: Icon(
                    isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,color: Colors.blueAccent,),
              )
            ],
          );
  }
}
