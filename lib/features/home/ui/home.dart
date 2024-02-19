import 'package:addcartwishlist/features/home/bloc/homebloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeblocBloc homeblocBloc = HomeblocBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeblocBloc, HomeblocState>(
      bloc: homeblocBloc,
      // listenWhen: (previous, current) {},
      // buildWhen: (previous, current) {},
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Grocery Store"),
            actions: [
              IconButton(
                  onPressed: () {
                    homeblocBloc.add(HomeWishlistButtonNevigateEvent());
                  },
                  icon: Icon(Icons.favorite)),
              IconButton(
                  onPressed: () {
                    homeblocBloc.add(HomeProductCartButtonClickEvent());
                  },
                  icon: Icon(Icons.shopping_bag))
            ],
          ),
        );
      },
    );
  }
}
