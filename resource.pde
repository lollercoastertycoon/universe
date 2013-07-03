class Resource extends SpaceObject {

  int distanceToOrbit, radius;
  float angle, velocity;
  String name;
  SpaceObject orbit;
  boolean destroyed = false;

  Resource( String tempName, int tempDistanceToOrbit, int tempRadius, float tempVelocity, float tempAngle, SpaceObject tempOrbit ) {
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
    fill(150, 0, 0);
    angle += velocity;
    position.x = orbit.position.x + distanceToOrbit * cos(angle);
    position.y = orbit.position.y + distanceToOrbit * sin(angle);
    triangle( position.x, position.y, position.x - 5, position.y - 10, position.x + 5, position.y - 10 );
  }
  
}
