import 'package:actu221/screens/home.dart';
import 'package:actu221/utils/constant.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';

class InputSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: SearchBar<String>(
          onSearch: search,
          hintText: homeScreenState.search == '' ? "Rechercher".toUpperCase() : homeScreenState.search ,

          hintStyle: TextStyle(color: Colors.white),
          cancellationText: Text('Annuler'),
          textStyle: TextStyle(
            color: Colors.white
          ),
          searchBarStyle : SearchBarStyle(
            backgroundColor: colorPrimaire,
            borderRadius: BorderRadius.circular(10)
          ),
          icon: Icon(Icons.search , color: Colors.white,),
          headerPadding: EdgeInsets.all(0),
          onItemFound: (String post, int index) {
            return Container();
          },
        ),
      ),
    );
  }

  Future<List<String>> search(String search) {
    homeScreenState.setState(() {
      homeScreenState.search = search;
    });
  }
}
