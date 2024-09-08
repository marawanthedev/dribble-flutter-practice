import 'package:dribblepractice/configs/assets/app_images.dart';
import 'package:flutter/material.dart';

class PostCardsData {
  final String avatarUrL;
  final String author;
  final String content;
  final String postImage;
  final Function(BuildContext context) onFollow;
  final Function(BuildContext context) onBookmark;
  final Function(BuildContext context) onLike;

  // CategoryData({required this.author,required this.avatarUrL,required this.content})

  const PostCardsData(
      {required this.avatarUrL,
      required this.author,
      required this.content,
      required this.postImage,
      required this.onFollow,
      required this.onBookmark,
      required this.onLike});
}

List<PostCardsData> postCards = [
  PostCardsData(
      avatarUrL:
          'https://cdn.dribbble.com/users/5087819/avatars/small/dc9ab91656c0af1ce282449b481c199d.jpg?1668750792',
      author: 'Josh Lee',
      content: 'I like burgers and friessss',
      postImage: AppImages.thailandBg,
      onFollow: (BuildContext context) => {},
      onBookmark: (BuildContext context) => {},
      onLike: (BuildContext context) => {}),
  PostCardsData(
      avatarUrL:
          'https://cdn.dribbble.com/users/5087819/avatars/small/dc9ab91656c0af1ce282449b481c199d.jpg?1668750792',
      author: 'Josh Lee',
      content: 'I like burgers and friessss',
      postImage: AppImages.thailandBg,
      onFollow: (BuildContext context) => {},
      onBookmark: (BuildContext context) => {},
      onLike: (BuildContext context) => {}),
  PostCardsData(
      avatarUrL:
          'https://cdn.dribbble.com/users/5087819/avatars/small/dc9ab91656c0af1ce282449b481c199d.jpg?1668750792',
      author: 'Josh Lee',
      content: 'I like burgers and friessss',
      postImage: AppImages.thailandBg,
      onFollow: (BuildContext context) => {},
      onBookmark: (BuildContext context) => {},
      onLike: (BuildContext context) => {})
];
