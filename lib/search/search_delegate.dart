import 'package:flutter/material.dart';

class MovieSearchDelegate extends SearchDelegate {
  String get searchFieldLabel => 'Buscar película';
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: () => query = '', icon: Icon(Icons.clear))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('buildresults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text('buildsuggetsions: $query');
  }
}
