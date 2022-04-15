import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'repo_search_bloc.dart';

void main() {
  runApp(const GithubSearchApp());
}

class GithubSearchApp extends StatelessWidget {
  const GithubSearchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GithubBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Github Repo Search Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const GithubSearchHome(),
      ),
    );
  }
}

class GithubSearchHome extends StatelessWidget {
  const GithubSearchHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Github Repo Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        child: Column(
          children: const [SearchWidget(), Expanded(child: RepoListView())],
        ),
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black12)),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: const InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            suffixIcon: Icon(Icons.search)),
        onChanged: (value) {
          if (value.trim().isEmpty) return;
          context.read<GithubBloc>().add(RepoSearchEvent(value));
        },
      ),
    );
  }
}

class RepoListView extends StatelessWidget {
  const RepoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GithubBloc, GithubState>(
      builder: (BuildContext context, state) {
        if (state is GithubLoadedState) {
          final repos = state.repos;
          return ListView(
            children: [
              ...repos.map((repo) => Column(
                    children: [
                      ListTile(
                        title: Text(
                          '${repo.fullName}',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(color: Colors.blue),
                        ),
                        leading: CircleAvatar(
                          foregroundImage:
                              NetworkImage('${repo.owner?.avatarUrl}'),
                        ),
                        isThreeLine: true,
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 4),
                            Text(
                              '${repo.description}',
                              maxLines: 2,
                            ),
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          );
        }
        else if(state is GithubErrorState){
          return Center(child: Text(state.error));
        }
        else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
