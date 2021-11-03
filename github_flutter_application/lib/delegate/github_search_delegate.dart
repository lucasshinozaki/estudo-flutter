import 'package:flutter/material.dart';

class GitHubSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    if (query.isNotEmpty) {
      return [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () => query = "",
        )
      ];
    }
    return [Container()];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_close,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return Container();
    }
    return Text("Buscando com sucesso!");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Container();
    }
    return ListTile(
      leading: const Icon(Icons.book),
      title: Text("Respositorios com $query"),
      onTap: () => showResults(context),
    );
  }

  @override
  String get searchFieldLabel => "Pesquisa";
  
}
