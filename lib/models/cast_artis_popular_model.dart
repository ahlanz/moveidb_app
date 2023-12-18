

class ArtisModel {
  bool? adult;
  int? gender;
  int? id;
  String? department;
  String? name;
  String? originalName;
  double? popularity;
  String? profilePhoto;
  // late List<PopularMovieModel>? movieCast;

  ArtisModel({
    this.adult,
    this.gender,
    this.id,
    this.department,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePhoto,
    // this.movieCast,
  });

  @override
  String toString() {
    return 'ArtistModel('
        'id: $id, '
        'gender: $gender, '
        'known_for_department: $department, '
        'popularity: $popularity, '
        'original_name: $originalName, '
        'profile_path: $profilePhoto,'
        'name: $name)';
  }

  factory ArtisModel.fromJson(Map<String, dynamic> json) {
    return ArtisModel(
      adult: json['adult'] as bool,
      gender: json['gender'] as int,
      id: json['id'] as int,
      department: json['known_for_department'] as String,
      name: json['name'] as String,
      originalName: json['original_name'] as String,
      popularity: json['popularity'] as double,
      profilePhoto: json['profile_path'] as String,
      // movieCast: json['known_for']
      //     .map<PopularMovieModel>(
      //         (castMovie) => PopularMovieModel.fromJson(castMovie))
      //     .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'adult': adult,
      'gender': gender ?? '',
      'known_for_department': department ?? '',
      'name': name ?? '',
      'original_name': originalName ?? '',
      'popularity': popularity ?? '',
      'profile_path': profilePhoto ?? '',
      // 'known_for': movieCast?.map((castMovie) => castMovie.toJson()).toList(),
    };
  }
}
