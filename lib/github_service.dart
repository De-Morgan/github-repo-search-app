import 'github_repo_response.dart';
import 'network.dart';

class GithubService {
  final NetworkProvider _networkProvider;

  GithubService({NetworkProvider? networkProvider})
      : _networkProvider = networkProvider ?? NetworkProvider();

  Future<List<Repository>> getPublicRepositories() async {
    try {
      const path = 'repositories';
      final response = await _networkProvider.get(path);
      return GithubRepoResponse.fromList(response.data).items;
    } catch (error) {
      rethrow;
    }
  }

  Future<List<Repository>> searchRepositories(String searchTerm) async {
    try {
      const path = 'search/repositories';
      final query = {'q': searchTerm};
      final response = await _networkProvider.get(path, queryParameters: query);
      return GithubRepoResponse.fromJson(response.data).items;
    } catch (error) {
      rethrow;
    }
  }
}
