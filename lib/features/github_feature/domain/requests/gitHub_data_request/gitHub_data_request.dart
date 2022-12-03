import 'package:freezed_annotation/freezed_annotation.dart';

part 'gitHub_data_request.freezed.dart';

@freezed
class GitHubDataRequest with _$GitHubDataRequest {
  const factory GitHubDataRequest({
    String? userName,
  }) = _GitHubDataRequest;
  factory GitHubDataRequest.fromJson(Map<String, dynamic> json) =>
      _$GitHubDataRequestFromJson(json);
  factory GitHubDataRequest.toJson(Map<String, dynamic> json) =>
      _$GitHubDataRequestToJson(json);
}
