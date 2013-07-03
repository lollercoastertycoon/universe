class Planet extends SpaceObject {

  int distanceToOrbit, radius;
  float angle, velocity;
  String name;
  SpaceObject orbit;

  Planet( String tempName, int tempDistanceToOrbit, int tempRadius, float tempVelocity, float tempAngle, SpaceObject tempOrbit ) {
    distanceToOrbit = tempDistanceToOrbit;
    orbit = tempOrbit;
    name = tempName;
    radius = tempRadius;
    velocity = tempVelocity / 10000;
    position.x = orbit.position.x - distanceToOrbit;
    position.y = orbit.position.y;
    angle = tempAngle;
  }

  void draw() {
    fill(50, 50, 50);
    angle += velocity;
    position.x = orbit.position.x + distanceToOrbit * cos(angle);
    position.y = orbit.position.y + distanceToOrbit * sin(angle);
    ellipse( position.x, position.y, radius, radius);
  }
  
}
