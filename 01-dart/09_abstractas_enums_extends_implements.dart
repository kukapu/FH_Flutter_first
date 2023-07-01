void main() {
  // final windPlant = EnergyPlant();
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print(windPlant);
  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('No hay suficiente energia');
  }

  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, solar }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind, solar

  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  void consumeEnergy(double amount);
  // solo se define la firma sin implemetacion
}

// extends o implements
class WindPlant extends EnergyPlant {
  WindPlant({
    required double initialEnergy,
  }) : super(
          energyLeft: initialEnergy,
          type: PlantType.wind,
        );

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// La implementacion solo extiende lo que implementamos
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
