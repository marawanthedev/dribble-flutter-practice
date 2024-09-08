import 'package:dribblepractice/configs/assets/app_images.dart';
import 'package:dribblepractice/presentation/views/home/constants/posts_cards.dart';
import 'package:dribblepractice/presentation/widgets/Button/button.dart';
import 'package:dribblepractice/presentation/widgets/postCard/postCard.dart';
import 'package:dribblepractice/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostsSection extends StatelessWidget {
  const PostsSection({super.key});

// an idea to optimize such a scenario in which we have space betwen each, a loop and we add a row of 2 widgets, the image card and sized box besides for all elements except last one
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: 400,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: postCards.length,
              itemBuilder: (context, index) {
                var card = postCards[index];
                return PostCard(
                  author: card.author,
                  avatarUrl: card.avatarUrL,
                  content: card.content,
                  postImage: card.postImage,
                  onBookmark: card.onBookmark,
                  onFollow: card.onFollow,
                  onLike: card.onLike,
                );
              },
            ),
          )),
    );
  }
}
