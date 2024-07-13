class Dimensions {
  num? width;
  num? height;
  num? depth;

  Dimensions({this.width, this.height, this.depth});

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        width: (json['width'] as num?),
        height: (json['height'] as num?),
        depth: (json['depth'] as num?),
      );

  Map<String, dynamic> toJson() => {
        'width': width,
        'height': height,
        'depth': depth,
      };
}
