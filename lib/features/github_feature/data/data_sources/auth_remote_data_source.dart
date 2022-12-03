import '../../domain/requests/gitHub_data_request/gitHub_data_request.dart';
import '../../models/responses/github_response/github_response.dart';

abstract class GitHubRemoteDataSource {
  Future<GitHubResponse> GetGitHubData(GitHubDataRequest request);
}
