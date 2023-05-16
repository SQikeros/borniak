import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BorniakAvatar extends StatelessWidget {
  final VoidCallback? onPressed;

  const BorniakAvatar({Key? key, this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 62,
      backgroundColor: Colors.teal,
      child: CircleAvatar(
        radius: 60,
        backgroundColor: Colors.teal.shade100,
        child: const Icon(Icons.add, size: 32, color: Colors.teal,),
      ),
    );
  }
}

class MealsAvatar extends StatelessWidget {
  final double? radius;

  const MealsAvatar({Key? key, this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: BorniakImage(
        width: radius,
        height: radius,
        fit: BoxFit.contain,
        svgAsset: 'assets/logo_borniak.svg', imageUrl: '',
      ),
    );
  }
}

class BorniakImage extends StatelessWidget {
  final String? imageUrl;
  final BoxFit? fit;
  final Alignment alignment;
  final double? width;
  final double? height;
  final String? emptyAsset;
  final String? svgAsset;

  const BorniakImage({
    Key? key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.width,
    this.height,
    this.emptyAsset,
    this.svgAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null) {
      return Container(
        color: Colors.white,
        child: CachedNetworkImage(
            imageUrl: imageUrl!,
            fit: fit,
            width: width,
            height: height,
            alignment: alignment,
            ),
      );
    } else {
      if (svgAsset != null) {
        return SvgPicture.asset(
          svgAsset!,
          alignment: alignment,
          fit: fit ?? BoxFit.cover,
          width: width,
          height: height,
        );
      }
      return Image.asset(
        emptyAsset ?? 'assets/black_gradient.png',
        alignment: alignment,
        fit: fit,
        width: width,
        height: height,
      );
    }
  }
}
