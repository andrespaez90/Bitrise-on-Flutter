class UserModel {
  UserModel({
    required this.username,
    required this.avatarUrl,
    required this.createAt,
    required this.email,
  });

  final String username;
  final String avatarUrl;
  final String createAt;
  final String email;
}
