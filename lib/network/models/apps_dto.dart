import 'package:json_annotation/json_annotation.dart';

part 'apps_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class AppsResponse {
  AppsResponse(this.data);

  factory AppsResponse.fromJson(Map<String, dynamic> json) =>
      _$AppsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AppsResponseToJson(this);

  final List<AppsDto> data;
}

@JsonSerializable(explicitToJson: true)
class AppsDto {
  AppsDto(
    this.slug,
    this.title,
    this.projectType,
    this.provider,
    this.repoOwner,
    this.repoSlug,
    this.isDisabled,
    this.status,
    this.isPublic,
    this.avatarUrl,
    this.owner,
  );

  factory AppsDto.fromJson(Map<String, dynamic> json) =>
      _$AppsDtoFromJson(json);
  Map<String, dynamic> toJson() => _$AppsDtoToJson(this);

  @JsonKey(name: 'slug')
  final String slug;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'project_type')
  final String projectType;

  @JsonKey(name: 'provider')
  final String provider;

  @JsonKey(name: 'repo_owner')
  final String repoOwner;

  @JsonKey(name: 'repo_slug')
  final String repoSlug;

  @JsonKey(name: 'is_disabled')
  bool isDisabled;

  @JsonKey(name: 'status')
  final int status;

  @JsonKey(name: 'is_public')
  final bool isPublic;

  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;

  @JsonKey(name: 'owner')
  final AppsOwnerDto owner;
}

@JsonSerializable(explicitToJson: true)
class AppsOwnerDto {
  AppsOwnerDto(
    this.accountType,
    this.name,
    this.slug,
  );

  factory AppsOwnerDto.fromJson(Map<String, dynamic> json) =>
      _$AppsOwnerDtoFromJson(json);
  Map<String, dynamic> toJson() => _$AppsOwnerDtoToJson(this);

  @JsonKey(name: 'account_type')
  final String accountType;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'slug')
  final String slug;
}
