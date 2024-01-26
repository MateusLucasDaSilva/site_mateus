// ignore_for_file: public_member_api_docs, sort_constructors_first

class AppIconsPaths {
  static const String gitHub = 'assets/images/gitHub.png';
  static const String facebook = 'assets/images/facebook.png';
  static const String instagram = 'assets/images/instagram.png';
  static const String linkedin = 'assets/images/linkedin.png';
  static const String whatsapp = 'assets/images/whatsapp.png';
  static const String logo = 'assets/images/logo.png';

  static const List<String> allIcons = [
    gitHub,
    linkedin,
    instagram,
    facebook,
    whatsapp,
  ];
}

class IconEntity {
  final String iconsPath;
  final String name;
  IconEntity({
    required this.iconsPath,
    required this.name,
  });

  final List<IconEntity> allIcons = [
    IconEntity(iconsPath: AppIconsPaths.facebook, name: 'Facebook')
  ];
}
