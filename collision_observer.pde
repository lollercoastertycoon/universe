class CollisionObserver {
  void player_vs_resources( Player player, ResourceManager resource_manager )
  {
     for( int i = 0; i < resource_manager.objects.size(); i++ )
     {
       float distanceX = abs( player.position.x - resource_manager.objects.get( i ).position.x );
       float distanceY = abs( player.position.y - resource_manager.objects.get( i ).position.y );
       
       if( distanceX < 20 && distanceY < 20 )
       {
          player.inventory.mineral_count++;
          resource_manager.delete( i );
       }
     }
  }
}
