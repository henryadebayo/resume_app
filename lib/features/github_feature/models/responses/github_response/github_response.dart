// To parse this JSON data, do
//
//     final gitHubResponse = gitHubResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_response.freezed.dart';

List<GitHubResponse> gitHubResponseFromJson(String str) =>
    List<GitHubResponse>.from(
        json.decode(str).map((x) => GitHubResponse.fromJson(x)));

String gitHubResponseToJson(List<GitHubResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class GitHubResponse with _$GitHubResponse {
  const factory GitHubResponse({
    int? id,
    String? nodeId,
    String? name,
    String? fullName,
    bool? private,
    Owner? owner,
    String? htmlUrl,
    String? description,
    bool? fork,
    String? url,
    String? forksUrl,
    String? keysUrl,
    String? collaboratorsUrl,
    String? teamsUrl,
    String? hooksUrl,
    String? issueEventsUrl,
    String? eventsUrl,
    String? assigneesUrl,
    String? branchesUrl,
    String? tagsUrl,
    String? blobsUrl,
    String? gitTagsUrl,
    String? gitRefsUrl,
    String? treesUrl,
    String? statusesUrl,
    String? languagesUrl,
    String? stargazersUrl,
    String? contributorsUrl,
    String? subscribersUrl,
    String? subscriptionUrl,
    String? commitsUrl,
    String? gitCommitsUrl,
    String? commentsUrl,
    String? issueCommentUrl,
    String? contentsUrl,
    String? compareUrl,
    String? mergesUrl,
    String? archiveUrl,
    String? downloadsUrl,
    String? issuesUrl,
    String? pullsUrl,
    String? milestonesUrl,
    String? notificationsUrl,
    String? labelsUrl,
    String? releasesUrl,
    String? deploymentsUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? pushedAt,
    String? gitUrl,
    String? sshUrl,
    String? cloneUrl,
    String? svnUrl,
    String? homepage,
    int? size,
    int? stargazersCount,
    int? watchersCount,
    Language? language,
    bool? hasIssues,
    bool? hasProjects,
    bool? hasDownloads,
    bool? hasWiki,
    bool? hasPages,
    bool? hasDiscussions,
    int? forksCount,
    dynamic mirrorUrl,
    bool? archived,
    bool? disabled,
    int? openIssuesCount,
    License? license,
    bool? allowForking,
    bool? isTemplate,
    bool? webCommitSignoffRequired,
    List<String>? topics,
    Visibility? visibility,
    int? forks,
    int? openIssues,
    int? watchers,
    DefaultBranch? defaultBranch,
  }) = _GitHubResponse;

  factory GitHubResponse.fromJson(Map<String, dynamic> json) =>
      _$GitHubResponseFromJson(json);
}

enum DefaultBranch { MASTER, MAIN }

final defaultBranchValues =
    EnumValues({"main": DefaultBranch.MAIN, "master": DefaultBranch.MASTER});

enum Language { DART, JAVA, PHP }

final languageValues = EnumValues(
    {"Dart": Language.DART, "Java": Language.JAVA, "PHP": Language.PHP});

@freezed
abstract class License with _$License {
  const factory License({
    String? key,
    String? name,
    String? spdxId,
    String? url,
    String? nodeId,
  }) = _License;

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);
}

@freezed
abstract class Owner with _$Owner {
  const factory Owner({
    Login? login,
    int? id,
    NodeId? nodeId,
    String? avatarUrl,
    String? gravatarId,
    String? url,
    String? htmlUrl,
    String? followersUrl,
    FollowingUrl? followingUrl,
    GistsUrl? gistsUrl,
    StarredUrl? starredUrl,
    String? subscriptionsUrl,
    String? organizationsUrl,
    String? reposUrl,
    EventsUrl? eventsUrl,
    String? receivedEventsUrl,
    Type? type,
    bool? siteAdmin,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

enum EventsUrl { HTTPS_API_GITHUB_COM_USERS_HENRYADEBAYO_EVENTS_PRIVACY }

final eventsUrlValues = EnumValues({
  "https://api.github.com/users/henryadebayo/events{/privacy}":
      EventsUrl.HTTPS_API_GITHUB_COM_USERS_HENRYADEBAYO_EVENTS_PRIVACY
});

enum FollowingUrl {
  HTTPS_API_GITHUB_COM_USERS_HENRYADEBAYO_FOLLOWING_OTHER_USER
}

final followingUrlValues = EnumValues({
  "https://api.github.com/users/henryadebayo/following{/other_user}":
      FollowingUrl.HTTPS_API_GITHUB_COM_USERS_HENRYADEBAYO_FOLLOWING_OTHER_USER
});

enum GistsUrl { HTTPS_API_GITHUB_COM_USERS_HENRYADEBAYO_GISTS_GIST_ID }

final gistsUrlValues = EnumValues({
  "https://api.github.com/users/henryadebayo/gists{/gist_id}":
      GistsUrl.HTTPS_API_GITHUB_COM_USERS_HENRYADEBAYO_GISTS_GIST_ID
});

enum Login { HENRYADEBAYO }

final loginValues = EnumValues({"henryadebayo": Login.HENRYADEBAYO});

enum NodeId { MDQ6_VX_NLCJ_U4_NJCY_MT_QW }

final nodeIdValues =
    EnumValues({"MDQ6VXNlcjU4NjcyMTQw": NodeId.MDQ6_VX_NLCJ_U4_NJCY_MT_QW});

enum StarredUrl { HTTPS_API_GITHUB_COM_USERS_HENRYADEBAYO_STARRED_OWNER_REPO }

final starredUrlValues = EnumValues({
  "https://api.github.com/users/henryadebayo/starred{/owner}{/repo}":
      StarredUrl.HTTPS_API_GITHUB_COM_USERS_HENRYADEBAYO_STARRED_OWNER_REPO
});

enum Type { USER }

final typeValues = EnumValues({"User": Type.USER});

enum Visibility { PUBLIC }

final visibilityValues = EnumValues({"public": Visibility.PUBLIC});
