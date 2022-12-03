import 'package:dartz/dartz.dart';
import 'package:resume_app/features/github_feature/domain/gitHub_repository.dart';
import 'package:resume_app/features/github_feature/models/responses/github_response/github_response.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../requests/gitHub_data_request/gitHub_data_request.dart';

class GetGitHubData implements UseCase<GitHubResponse, GitHubDataRequest> {
  GetGitHubData({required this.gitHubRepository});
  final GitHubRepository gitHubRepository;

  @override
  Future<Either<Failure, GitHubResponse>> call(GitHubDataRequest params) {
    return gitHubRepository.getData(params);
  }
}
