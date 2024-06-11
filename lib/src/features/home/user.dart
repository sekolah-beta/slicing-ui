List<User> kListUser = [
  const User(name: 'Your Story', image: 'assets/profil1.png'),
  const User(name: 'karenne', image: 'assets/profil2.png'),
  const User(name: 'zackjohn', image: 'assets/profil3.png'),
  const User(name: 'kieron_d', image: 'assets/profil4.png'),
  const User(name: 'craig_love', image: 'assets/profil5.png'),
];

class User {
  const User({required this.name, required this.image});
  final String name, image;
}
