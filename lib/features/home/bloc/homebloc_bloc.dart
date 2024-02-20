import 'dart:async';

import 'package:addcartwishlist/features/home/models/home_product_data_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'homebloc_event.dart';
part 'homebloc_state.dart';

class HomeblocBloc extends Bloc<HomeblocEvent, HomeblocState> {
  HomeblocBloc() : super(HomeblocInitial()) {
    on<HomeProductWishlistButtonClickEvent>(
        homeProductWishlistButtonClickEvent);
    on<HomeProductCartButtonClickEvent>(homeProductCartButtonClickEvent);
    on<HomeWishlistButtonNevigateEvent>(homeWishlistButtonNevigateEvent);
    on<HomecarttButtonNevigateEvent>(homecarttButtonNevigateEvent);
  }

  FutureOr<void> homeProductWishlistButtonClickEvent(
      HomeProductWishlistButtonClickEvent event, Emitter<HomeblocState> emit) {
    print('Wishlist Product Clicked.');
  }

  FutureOr<void> homeProductCartButtonClickEvent(
      HomeProductCartButtonClickEvent event, Emitter<HomeblocState> emit) {
    print('Cart Product Clicked.');
  }
}

FutureOr<void> homeWishlistButtonNevigateEvent(
    HomeWishlistButtonNevigateEvent event, Emitter<HomeblocState> emit) {
  print('Wishlist Navigate Clicked.');

  emit(HomeNavigateToWishlistPageActionSate());
}

FutureOr<void> homecarttButtonNevigateEvent(
    HomecarttButtonNevigateEvent event, Emitter<HomeblocState> emit) {
  print('Cart Navigate Clicked.');
    emit(HomeNavigateToCartPageActionSate());
}
