import 'package:flutter/material.dart';
import 'package:bilibili_flutter/widgets/d_pad_control_focus.dart';
import 'package:bilibili_flutter/widgets/card.dart';
import 'package:bilibili_flutter/pages/player_page.dart';

class VideoCard extends StatefulWidget {

  static const double coverAspectRatio = 16.0 / 9.0;

  const VideoCard({
    required this.bv,
    required this.coverUrl,
    required this.title,
    this.titleStyle,
    required this.author,
    this.authorStyle,
    required this.textBoxHeight,
    this.color = Colors.transparent,
    this.focusedColor = Colors.purple,
    super.key,
  });

  final String bv;
  final String coverUrl;
  final String title;
  final TextStyle? titleStyle;
  final String author;
  final TextStyle? authorStyle;
  final double textBoxHeight;
  final Color color;
  final Color focusedColor;

  @override
  State<StatefulWidget> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  bool focused = false;

  @override
  Widget build(BuildContext context) {
    return SimpleDPadFocusTap(
        onFocusChange: (hasFocused) {
          setState(() {
            focused = hasFocused;
          });
        },
        onTap: (){
          Navigator.pushNamed(context, BilibiliVideoPlayerPage.routeName, arguments: widget.bv);
        },
        child: SimpleImageCard(
          imageUrl: widget.coverUrl,
          imageAspectRatio: VideoCard.coverAspectRatio,
          textTitle: widget.title,
          titleStyle: widget.titleStyle,
          textContent: widget.author,
          contentStyle: widget.authorStyle,
          textBoxHeight: widget.textBoxHeight,
          backgroundColor: focused ? widget.focusedColor : widget.color,
        ));
  }
}
