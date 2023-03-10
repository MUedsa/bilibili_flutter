import 'package:bilibili_flutter/widgets/other_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageUtils {
  static CachedNetworkImage wrapper(
      String imageUrl, Map<String, String>? httpHeaders) {
    return CachedNetworkImage(
        imageUrl: imageUrl,
        httpHeaders: httpHeaders,
        placeholder: (context, url) => const LoadingWidget(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        fit: BoxFit.cover);
  }

  static String randomImageUrl(int w, int h) {
    int time = DateTime.now().microsecondsSinceEpoch;
    return "https://picsum.photos/$w/$h?$time";
  }
}

class HttpHeaderUtils {
  static const String referer = 'referer';
  static const String userAgent = 'user-agent';
  static const String chromeUserAgent =
      'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36';

  static String? getValue(Map<String, String> headers, String key) {
    return toLowerCase(headers)?[key.toLowerCase()];
  }

  static Map<String, String>? toLowerCase(Map<String, String> headers) {
    return headers.map((key, value) => MapEntry(key.toLowerCase(), value));
  }
}
