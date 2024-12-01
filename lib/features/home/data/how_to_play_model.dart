class CategoriesModel
{
  final String title;
  final String? desc;
  final String image;
  final Categories? category;
  int attemptsLeft = 7;

  CategoriesModel({required this.title, this.desc,
    required this.image, this.category,});
}

enum Categories
{
  award,
  nation,
  club,
  league,
  trophy,
  position,
}