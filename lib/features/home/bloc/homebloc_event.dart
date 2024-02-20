part of 'homebloc_bloc.dart';

@immutable
 abstract class HomeblocEvent {   
}
class HomeInitialEvent extends HomeblocEvent{}

class HomeProductWishlistButtonClickEvent extends HomeblocEvent{

}

class HomeProductCartButtonClickEvent extends HomeblocEvent{
  
}


class HomeWishlistButtonNevigateEvent extends HomeblocEvent{
  
}

class HomecarttButtonNevigateEvent extends HomeblocEvent{
  
}