import 'package:flutter/material.dart';
import 'package:myapp/resources/dimensions.dart';
import 'package:myapp/widgets/post_action_list.dart';
import 'package:myapp/widgets/post_header.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 3,
      child: Container(
        margin: const EdgeInsets.fromLTRB(
          largeSize,
          0,
          largeSize,
          largeSize,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(xLargeSize),
          image: const DecorationImage(
            // Use a placeholder image or network image
            image: NetworkImage('https://picsum.photos/800/600?random=3'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const PostHeader(), // No const issues if PostHeader is stateless
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PostActionList(), // No const issues if PostActionList is stateless
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    largeSize,
                    0,
                    largeSize,
                    mediumSize,
                  ),
                  child: const Text(
                    'This is my amazing moment...',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
