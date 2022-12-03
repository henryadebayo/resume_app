import 'package:dartz/dartz.dart';
import 'package:resume_app/core/errors/errors.dart';
import 'package:resume_app/core/utils/repositories.dart';
import 'package:resume_app/features/github_feature/data/data_sources/auth_remote_data_source.dart';
import 'package:resume_app/features/github_feature/domain/requests/gitHub_data_request/gitHub_data_request.dart';
import 'package:resume_app/features/github_feature/models/responses/github_response/github_response.dart';

import '../domain/gitHub_repository.dart';

class GitHubRepositoryImpl extends Repository implements GitHubRepository {
  GitHubRepositoryImpl({
    required this.gitHubRemoteDataSource,
  });

  final GitHubRemoteDataSource gitHubRemoteDataSource;

  @override
  Future<Either<Failure, GitHubResponse>> getData(
      GitHubDataRequest request) async {
    final Either<Failure, GitHubResponse> response =
        await makeRequest(gitHubRemoteDataSource.GetGitHubData(request));
    return response.fold((Failure failure) => left(failure),
        (GitHubResponse response) async {
      return right(response);
    });
  }
}
