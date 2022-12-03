import 'package:dartz/dartz.dart';
import 'package:resume_app/core/errors/errors.dart';
import 'package:resume_app/features/github_feature/domain/requests/gitHub_data_request/gitHub_data_request.dart';
import 'package:resume_app/features/github_feature/models/responses/github_response/github_response.dart';

abstract class GitHubRepository {
  Future<Either<Failure, GitHubResponse>> getData(GitHubDataRequest request);
}
