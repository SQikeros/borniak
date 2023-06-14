import 'package:hive/hive.dart';

part 'meals_model.g.dart';

@HiveType(typeId: 2)
class ShoppingItem extends HiveObject {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late bool isPurchased;
}