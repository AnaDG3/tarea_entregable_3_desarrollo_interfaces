import 'datos_planetas.dart';

class DatosEntrada {

  static List<Planeta> obtenerPlanetas() {
    return [
      obtenerPlanetaPorId("PLANET-001"),
      obtenerPlanetaPorId("PLANET-002"),
      obtenerPlanetaPorId("PLANET-003"),
    ];
  }
}