import 'package:dribblepractice/presentation/widgets/Button/button.dart';
import 'package:dribblepractice/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

typedef OnBookmarkCallback = void Function(BuildContext context);
typedef OnFollowCallback = void Function(BuildContext context);
typedef OnLikeCallback = void Function(BuildContext context);

class PostCard extends StatelessWidget {
  const PostCard(
      {super.key,
      required this.author,
      required this.avatarUrl,
      required this.content,
      required this.onBookmark,
      required this.onFollow,
      required this.postImage,
      required this.onLike});

  final String avatarUrl;
  final String author;
  final String content;
  final String postImage;
  final OnBookmarkCallback onBookmark;
  final OnFollowCallback onFollow;
  final OnLikeCallback onLike;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Container(
                  width: 55,
                  height: 55,
                  margin: const EdgeInsets.only(right: 7),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: AppColors
                            .primary, // Replace with your desired border color
                        width: 1.0, // Adjust the border width as needed
                      ),
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                          image: NetworkImage(avatarUrl), fit: BoxFit.cover)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(author,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    const Text('Suggested for you',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.grey))
                  ],
                )
              ]),
              Row(
                children: [
                  CustomElevatedButton(
                      text: 'Follow', onPressed: () => onFollow(context)),
                  IconButton(
                      onPressed: () => {print('opening menu')},
                      icon: Icon(MdiIcons.dotsVertical))
                ],
              )
            ],
          ),
        ),
        Text(
          content,
          overflow: TextOverflow.clip,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 220,
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey, // Replace with your desired border color
                width: 1.0, // Adjust the border width as needed
              ),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(postImage), fit: BoxFit.cover)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () => onLike(context),
                icon: Icon(MdiIcons.heartOutline)),
            IconButton(
                onPressed: () => onBookmark(context),
                icon: Icon(MdiIcons.bookmarkOutline))
          ],
        ),
      ],
    );
  }
}
