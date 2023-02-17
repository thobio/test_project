import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final bool isImageNeeded;
  final String? smallTitle;
  final String bigTitle;
  final String? imageURL;
  const AppBarCustom({
    super.key,
    required this.height,
    required this.isImageNeeded,
    this.smallTitle,
    required this.bigTitle,
    this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Column(
        children: [
          Text(
            smallTitle == null ? "" : "$smallTitle        ",
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: Color(
                0xFFB2AEC0,
              ),
            ),
            textAlign: TextAlign.justify,
          ),
          Text(
            bigTitle,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.normal,
              color: Color(
                0xFF153163,
              ),
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ),
      leadingWidth: 150,
      automaticallyImplyLeading: false,
      actions: [
        const Spacer(),
        isImageNeeded == true
            ? CircleAvatar(
                backgroundImage: AssetImage(imageURL!),
                radius: 60,
              )
            : const Spacer(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
