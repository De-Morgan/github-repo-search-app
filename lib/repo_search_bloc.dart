import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repo_search/github_repo_response.dart';
import 'package:rxdart/rxdart.dart';
import 'package:equatable/equatable.dart';

import 'github_service.dart';

EventTransformer<T> debounce<T>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
}

abstract class GithubEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetPublicRepositoryEvent extends GithubEvent {}

class RepoSearchEvent extends GithubEvent {
  final String search;

  RepoSearchEvent(this.search);
  @override
  List<Object?> get props => [search];
}

abstract class GithubState extends Equatable{
  @override
  List<Object?> get props => [];
}

class GithubLoadingState extends GithubState {}

class GithubLoadedState extends GithubState {
  final List<Repository> repos;

  GithubLoadedState(this.repos);
  @override
  List<Object?> get props => [props];
}

class GithubErrorState extends GithubState {
  final String error;

  GithubErrorState(this.error);
  @override
  List<Object?> get props => [error];
}

class GithubEmptyState extends GithubState {}

class GithubBloc extends Bloc<GithubEvent, GithubState> {
  final GithubService _githubService;

  GithubBloc({GithubService? githubService})
      : _githubService = githubService ?? GithubService(),
        super(GithubEmptyState()) {
    on<GetPublicRepositoryEvent>((event, emit) async {
      try {
        emit(GithubLoadingState());
        final repos = await _githubService.getPublicRepositories();
        if (repos.isEmpty) {
          emit(GithubEmptyState());
        } else {
          emit(GithubLoadedState(repos));
        }
      } catch (err) {
        emit(GithubErrorState(err.toString()));
      }
    });
    on<RepoSearchEvent>((event, emit) async {
      try {
        emit(GithubLoadingState());
        final repos = await _githubService.searchRepositories(event.search);
        if (repos.isEmpty) {
          emit(GithubEmptyState());
        } else {
          emit(GithubLoadedState(repos));
        }
      } catch (err) {

        emit(GithubErrorState(err.toString()));
      }
    }, transformer: debounce(const Duration(milliseconds: 2000)));
    add(GetPublicRepositoryEvent());
  }
}
