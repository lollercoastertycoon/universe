class ObjectManager {

  ArrayList<SpaceObject> objects = new ArrayList<SpaceObject>();
  
  void add( SpaceObject Obj ) {
    objects.add( Obj );
  }

  void drawAll() {
     for( int i = 0; i < objects.size(); i++ )
     {
       objects.get( i ).draw();
     }
  }
  
  void delete( int n )
  {
    objects.remove( n );
  }
}
