class PlanetModel {
  final String name;
  final String title;
  final String image;
  final String about;
  final String distanceFromSun;
  final String lengthOfDay;
  final String orbitalPeriod;
  final String radius;
  final String mass;
  final String gravity;
  final String surfaceArea;
  final String model3D;

  const PlanetModel({
    required this.name,
    required this.title,
    required this.image,
    required this.about,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
    required this.model3D,
  });
}

const List<PlanetModel> planets = [
  PlanetModel(
    name: 'Sun',
    title: "The Sun: Our Solar System's Star",
    image: 'assets/images/sun.png',
    about: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    distanceFromSun: '0',
    lengthOfDay: '0',
    orbitalPeriod: '0',
    radius: '695,700 km',
    mass: '1.989 × 10³⁰ kg',
    gravity: '274 m/s²',
    surfaceArea: '6.09 × 10¹² km²',
    model3D: 'assets/models/sun.glb',
  ),

  PlanetModel(
    name: 'Mercury',
    title: 'Mercury: The Closest Planet',
    image: 'assets/images/mercury.png',
    about: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    distanceFromSun: '57,909,227 km',
    lengthOfDay: '1,407.60 hours',
    orbitalPeriod: '0.24 Earth years',
    radius: '2,439.70 km',
    mass: '3.301 × 10²³ kg',
    gravity: '3.7 m/s²',
    surfaceArea: '7.48 × 10⁷ km²',
    model3D: 'assets/models/mercury.glb',
  ),

  PlanetModel(
    name: 'Venus',
    title: "Venus: Earth's Toxic Twin",
    image: 'assets/images/venus.png',
    about: "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
    distanceFromSun: '108,209,072 km',
    lengthOfDay: '5,832.20 hours',
    orbitalPeriod: '0.62 Earth years',
    radius: '6,051.80 km',
    mass: '4.867 × 10²⁴ kg',
    gravity: '8.87 m/s²',
    surfaceArea: '4.60 × 10⁸ km²',
    model3D: 'assets/models/venus.glb',
  ),

  PlanetModel(
    name: 'Earth',
    title: 'Earth: Our Blue Marble',
    image: 'assets/images/earth.png',
    about: "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
    distanceFromSun: '149,598,026 km',
    lengthOfDay: '23.93 hours',
    orbitalPeriod: '1 Earth year',
    radius: '6,371 km',
    mass: '5.972 × 10²⁴ kg',
    gravity: '9.81 m/s²',
    surfaceArea: '5.10 × 10⁸ km²',
    model3D: 'assets/models/earth.glb',
  ),

  PlanetModel(
    name: 'Mars',
    title: 'Mars: The Red Planet',
    image: 'assets/images/mars.png',
    about: "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
    distanceFromSun: '227,943,824 km',
    lengthOfDay: '24.62 hours',
    orbitalPeriod: '1.88 Earth years',
    radius: '3,389.50 km',
    mass: '6.39 × 10²³ kg',
    gravity: '3.71 m/s²',
    surfaceArea: '1.45 × 10⁸ km²',
    model3D: 'assets/models/mars.glb',
  ),

  PlanetModel(
    name: 'Jupiter',
    title: 'Jupiter: The Gas Giant',
    image: 'assets/images/jupiter.png',
    about: "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
    distanceFromSun: '778,547,669 km',
    lengthOfDay: '9.92 hours',
    orbitalPeriod: '11.86 Earth years',
    radius: '69,911 km',
    mass: '1.898 × 10²⁷ kg',
    gravity: '24.79 m/s²',
    surfaceArea: '6.21 × 10¹⁵ km²',
    model3D: 'assets/models/jupiter.glb',
  ),

  PlanetModel(
    name: 'Saturn',
    title: 'Saturn: The Ringed Planet',
    image: 'assets/images/saturn.png',
    about: "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
    distanceFromSun: '1,426,666,422 km',
    lengthOfDay: '10.66 hours',
    orbitalPeriod: '29.46 Earth years',
    radius: '58,232 km',
    mass: '5.683 × 10²⁶ kg',
    gravity: '10.44 m/s²',
    surfaceArea: '4.27 × 10¹⁵ km²',
    model3D: 'assets/models/saturn.glb',
  ),

  PlanetModel(
    name: 'Uranus',
    title: 'Uranus: The Tilted Planet',
    image: 'assets/images/uranus.png',
    about: "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
    distanceFromSun: '2,870,990,000 km',
    lengthOfDay: '17.24 hours',
    orbitalPeriod: '84.01 Earth years',
    radius: '25,362 km',
    mass: '8.681 × 10²⁵ kg',
    gravity: '8.69 m/s²',
    surfaceArea: '8.1 × 10¹⁵ km²',
    model3D: 'assets/models/uranus.glb',
  ),

  PlanetModel(
    name: 'Neptune',
    title: 'Neptune: The Distant World',
    image: 'assets/images/neptune.png',
    about: "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
    distanceFromSun: '4,498,252,900 km',
    lengthOfDay: '16.11 hours',
    orbitalPeriod: '164.8 Earth years',
    radius: '24,622 km',
    mass: '1.024 × 10²⁶ kg',
    gravity: '11.15 m/s²',
    surfaceArea: '7.65 × 10¹⁵ km²',
    model3D: 'assets/models/neptune.glb',
  ),
];
