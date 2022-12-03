import 'package:resume_app/features/github_feature/domain/requests/gitHub_data_request/gitHub_data_request.dart';
import 'package:resume_app/features/github_feature/models/responses/github_response/github_response.dart';

import '../../../../core/utils/http_client.dart';
import 'auth_endpoints.dart';
import 'auth_remote_data_source.dart';

class GitHubRemoteDataSourceImpl implements GitHubRemoteDataSource {
  GitHubRemoteDataSourceImpl({required AppHTTPClient client})
      : _client = client;
  final AppHTTPClient _client;

  @override
  Future<GitHubResponse> GetGitHubData(GitHubDataRequest request) async {
    final Map<String, dynamic> json = await _client.post(
      GitEndpoints.getData,
      body: request.toJson(),
    );
    final GitHubResponse authResponse = GitHubResponse.fromJson(json);
    return authResponse;
  }
}
