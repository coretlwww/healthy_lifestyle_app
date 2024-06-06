class Workout {
  final String name;
  final String imagePath;
  final TrainCategory category;
  final String description;
  final String description2;
  final String description3;

  Workout({
    required this.name,
    required this.imagePath,
    required this.category,
    required this.description,
    required this.description2,
    required this.description3,
  });
}

enum TrainCategory {
  cardio,
  plyometric,
  stretching,
  power,
  equilibrium,
}