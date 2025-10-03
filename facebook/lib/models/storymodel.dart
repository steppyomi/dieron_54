class StoryModel {
  final String id;
  final String username;
  final String profileImagePath;
  final String storyImagePath;
  final DateTime timestamp;
  final bool isViewed;

  StoryModel({
    required this.id,
    required this.username,
    required this.profileImagePath,
    required this.storyImagePath,
    required this.timestamp,
    required this.isViewed,
  });

  String get timeAge {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'profileImagePath': profileImagePath,
      'storyImagePath': storyImagePath,
      'timestamp': timestamp.toIso8601String(),
      'isViewed': isViewed,
    };
  }

  factory StoryModel.fromJson(Map<String, dynamic> json) {
    return StoryModel(
      id: json['id'],
      username: json['username'],
      profileImagePath: json['profileImagePath'],
      storyImagePath: json['storyImagePath'],
      timestamp: DateTime.parse(json['timestamp']),
      isViewed: json['isViewed'],
    );
  }

  StoryModel copyWith({
    String? id,
    String? username,
    String? profileImagePath,
    String? storyImagePath,
    DateTime? timestamp,
    bool? isViewed,
  }) {
    return StoryModel(
      id: id ?? this.id,
      username: username ?? this.username,
      profileImagePath: profileImagePath ?? this.profileImagePath,
      storyImagePath: storyImagePath ?? this.storyImagePath,
      timestamp: timestamp ?? this.timestamp,
      isViewed: isViewed ?? this.isViewed,
    );
  }
}

