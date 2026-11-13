// 1. MODELOS DE DATOS PLANOS (SIN ANIDAMIENTOS NI MAPAS)

class Planeta {
  final String id;
  final String nombre;
  final String Radio;
  final String imagenUrl;
  final String descripcion;

  const Planeta({
    required this.id,
    required this.nombre,
    required this.Radio,
    required this.imagenUrl,
    required this.descripcion,
  });
}



// 2. MOCK DATA EN LISTAS INDEPENDIENTES

final List<Planeta> datos_planetas = const [
  Planeta(
    id: 'PLANET-001',
    nombre: 'Venus',
    Radio: '108.2 Millones Km',
    imagenUrl: 'assets/images/choco.jpg',
    descripcion: 'La densa atmósfera de Venus lo convierte en el planeta más caliente de nuestro sistema solar.',
  ),
  Planeta(
    id: 'PLANET-002',
    nombre: 'Mercurio',
    Radio: '57.9 Millones Km',
    imagenUrl: 'assets/images/sardina.jpg',
    descripcion: 'Es el planeta más pequeño y rápido; recorre su órbita alrededor del Sol en solo 88 días terrestres.',
  ),
  Planeta(
    id: 'PLANET-003',
    nombre: 'Tierra',
    Radio: '149.5 Millones Km',
    imagenUrl: 'assets/images/gamba_blanca.jpg',
    descripcion: 'El único planeta de nuestro sistema solar con agua líquida en la superficie.',
  ),
];

// 3. MÉTODOS DE BÚSQUEDA (Para vincular IDs en la UI)

Planeta obtenerPlanetaPorId(String id) {
  return datos_planetas.firstWhere((p) => p.id == id);
}