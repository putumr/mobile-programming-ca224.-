import 'package:flutter/material.dart';
import '../../../core/resources/dimensions.dart';

class PostItemSquare extends StatelessWidget {
  const PostItemSquare({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        margin: const EdgeInsets.all(smallSize),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(xLargeSize),
          image: DecorationImage(
            // image: AssetImage('assets/images/moments_background_dark.png'),
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
