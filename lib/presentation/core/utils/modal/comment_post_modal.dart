// import 'package:flutter/material.dart';

// import '../../../../domain/entities/post_shortest/post_shortest.dart';
// import '../../mixins/resources_app.dart';

// class CommentPostModal extends StatelessWidget with ResourcesApp {
//   final PostShortest post;
//   final bool fromListPost;

//   CommentPostModal({
//     super.key,
//     required this.post,
//     this.fromListPost = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(top: 12),
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(12),
//           topRight: Radius.circular(12),
//         ),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Center(
//             child: Container(
//               width: 40,
//               height: 5,
//               margin: const EdgeInsets.only(bottom: 12),
//               decoration: BoxDecoration(
//                 color: Colors.grey[300],
//                 borderRadius: BorderRadius.circular(10),
//               ),
//             ),
//           ),
//           BaseText(
//             textContent: 'Bình luận bài viết',
//             textSize: appSizes.smallTextSize,
//             textFontWeight: FontWeight.bold,
//           ),
//           const SizedBox(height: 3),
//           Divider(thickness: 0.2, color: appColors.greyColor, height: 0),
//           Expanded(
//             child: ContentCommentPost(post: post, fromListPost: fromListPost),
//           ),
//           const SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }
