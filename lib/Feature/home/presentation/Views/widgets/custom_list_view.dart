import 'package:bookly/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key,required this.imageUrl});
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:BorderRadius.circular(16),
      child: AspectRatio(
        
        aspectRatio:2.6/4 ,
        child:
             CachedNetworkImage(imageUrl: imageUrl,
             placeholder: (context, url) => Center(child: const CircularProgressIndicator()),
             fit: BoxFit.fill,
             errorWidget: (context, url, error) => Icon(Icons.error),),
      ),
    );
  }
}
