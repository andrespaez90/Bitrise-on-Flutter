import 'package:json_annotation/json_annotation.dart';

part 'profile_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ProfileResponse {
  ProfileResponse(this.data);

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);

  final ProfileDto data;
}

@JsonSerializable(explicitToJson: true)
class ProfileDto {
  ProfileDto(
    this.avatarUrl,
    this.createAt,
    this.dataId,
    this.email,
    this.hasUsedOrganizationTrial,
    this.slug,
    this.username,
  );

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileDtoToJson(this);

  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  @JsonKey(name: 'created_at')
  final String createAt;

  @JsonKey(name: 'data_id')
  final int dataId;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'has_used_organization_trial')
  final bool hasUsedOrganizationTrial;

  @JsonKey(name: 'slug')
  final String slug;

  @JsonKey(name: 'username')
  final String username;
}
