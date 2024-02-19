part of 'homebloc_bloc.dart';

@immutable
sealed class HomeblocEvent {}

class HomeProductWishlistButtonClickEvent extends HomeblocEvent{

}

class HomeProductCartButtonClickEvent extends HomeblocEvent{
  
}


class HomeWishlistButtonNevigateEvent extends HomeblocEvent{
  
}

class HomecarttButtonNevigateEvent extends HomeblocEvent{
  
}