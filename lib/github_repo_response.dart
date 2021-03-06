
class GithubRepoResponse {
  GithubRepoResponse.fromJson(Map<String, dynamic> json)
      : items = <Repository>[] {
    totalCount = json['total_count'];
    incompleteResults = json['incomplete_results'];

    if (json['items'] != null) {
      json['items'].forEach((v) {
        items.add(Repository.fromJson(v));
      });
    }
  }

  int? totalCount;
  bool? incompleteResults;
  List<Repository> items;

  GithubRepoResponse.fromList(List<dynamic> data)
      : items = <Repository>[] {
    for (var v in data) {
      items.add(Repository.fromJson(v));
    }
  }
}

class Repository {
  Repository({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.owner,
    this.private,
    this.htmlUrl,
    this.description,
    this.fork,
    this.url,
    this.createdAt,
    this.updatedAt,
    this.pushedAt,
    this.homepage,
    this.size,
    this.stargazersCount,
    this.watchersCount,
    this.language,
    this.forksCount,
    this.openIssuesCount,
    this.masterBranch,
    this.defaultBranch,
    this.score,
    this.archiveUrl,
    this.assigneesUrl,
    this.blobsUrl,
    this.branchesUrl,
    this.collaboratorsUrl,
    this.commentsUrl,
    this.commitsUrl,
    this.compareUrl,
    this.contentsUrl,
    this.contributorsUrl,
    this.deploymentsUrl,
    this.downloadsUrl,
    this.eventsUrl,
    this.forksUrl,
    this.gitCommitsUrl,
    this.gitRefsUrl,
    this.gitTagsUrl,
    this.gitUrl,
    this.issueCommentUrl,
    this.issueEventsUrl,
    this.issuesUrl,
    this.keysUrl,
    this.labelsUrl,
    this.languagesUrl,
    this.mergesUrl,
    this.milestonesUrl,
    this.notificationsUrl,
    this.pullsUrl,
    this.releasesUrl,
    this.sshUrl,
    this.stargazersUrl,
    this.statusesUrl,
    this.subscribersUrl,
    this.subscriptionUrl,
    this.tagsUrl,
    this.teamsUrl,
    this.treesUrl,
    this.cloneUrl,
    this.mirrorUrl,
    this.hooksUrl,
    this.svnUrl,
    this.forks,
    this.openIssues,
    this.watchers,
    this.hasIssues,
    this.hasProjects,
    this.hasPages,
    this.hasWiki,
    this.hasDownloads,
    this.archived,
    this.disabled,
    this.visibility,
    this.license,
  });

  Repository.fromJson(dynamic json) {
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    fullName = json['full_name'];
    owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    private = json['private'];
    htmlUrl = json['html_url'];
    description = json['description'];
    fork = json['fork'];
    url = json['url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pushedAt = json['pushed_at'];
    homepage = json['homepage'];
    size = json['size'];
    stargazersCount = json['stargazers_count'];
    watchersCount = json['watchers_count'];
    language = json['language'];
    forksCount = json['forks_count'];
    openIssuesCount = json['open_issues_count'];
    masterBranch = json['master_branch'];
    defaultBranch = json['default_branch'];
    score = json['score'];
    archiveUrl = json['archive_url'];
    assigneesUrl = json['assignees_url'];
    blobsUrl = json['blobs_url'];
    branchesUrl = json['branches_url'];
    collaboratorsUrl = json['collaborators_url'];
    commentsUrl = json['comments_url'];
    commitsUrl = json['commits_url'];
    compareUrl = json['compare_url'];
    contentsUrl = json['contents_url'];
    contributorsUrl = json['contributors_url'];
    deploymentsUrl = json['deployments_url'];
    downloadsUrl = json['downloads_url'];
    eventsUrl = json['events_url'];
    forksUrl = json['forks_url'];
    gitCommitsUrl = json['git_commits_url'];
    gitRefsUrl = json['git_refs_url'];
    gitTagsUrl = json['git_tags_url'];
    gitUrl = json['git_url'];
    issueCommentUrl = json['issue_comment_url'];
    issueEventsUrl = json['issue_events_url'];
    issuesUrl = json['issues_url'];
    keysUrl = json['keys_url'];
    labelsUrl = json['labels_url'];
    languagesUrl = json['languages_url'];
    mergesUrl = json['merges_url'];
    milestonesUrl = json['milestones_url'];
    notificationsUrl = json['notifications_url'];
    pullsUrl = json['pulls_url'];
    releasesUrl = json['releases_url'];
    sshUrl = json['ssh_url'];
    stargazersUrl = json['stargazers_url'];
    statusesUrl = json['statuses_url'];
    subscribersUrl = json['subscribers_url'];
    subscriptionUrl = json['subscription_url'];
    tagsUrl = json['tags_url'];
    teamsUrl = json['teams_url'];
    treesUrl = json['trees_url'];
    cloneUrl = json['clone_url'];
    mirrorUrl = json['mirror_url'];
    hooksUrl = json['hooks_url'];
    svnUrl = json['svn_url'];
    forks = json['forks'];
    openIssues = json['open_issues'];
    watchers = json['watchers'];
    hasIssues = json['has_issues'];
    hasProjects = json['has_projects'];
    hasPages = json['has_pages'];
    hasWiki = json['has_wiki'];
    hasDownloads = json['has_downloads'];
    archived = json['archived'];
    disabled = json['disabled'];
    visibility = json['visibility'];
    license =
        json['license'] != null ? License.fromJson(json['license']) : null;
  }

  int? id;
  String? nodeId;
  String? name;
  String? fullName;
  Owner? owner;
  bool? private;
  String? htmlUrl;
  String? description;
  bool? fork;
  String? url;
  String? createdAt;
  String? updatedAt;
  String? pushedAt;
  String? homepage;
  num? size;
  num? stargazersCount;
  num? watchersCount;
  String? language;
  num? forksCount;
  num? openIssuesCount;
  String? masterBranch;
  String? defaultBranch;
  num? score;
  String? archiveUrl;
  String? assigneesUrl;
  String? blobsUrl;
  String? branchesUrl;
  String? collaboratorsUrl;
  String? commentsUrl;
  String? commitsUrl;
  String? compareUrl;
  String? contentsUrl;
  String? contributorsUrl;
  String? deploymentsUrl;
  String? downloadsUrl;
  String? eventsUrl;
  String? forksUrl;
  String? gitCommitsUrl;
  String? gitRefsUrl;
  String? gitTagsUrl;
  String? gitUrl;
  String? issueCommentUrl;
  String? issueEventsUrl;
  String? issuesUrl;
  String? keysUrl;
  String? labelsUrl;
  String? languagesUrl;
  String? mergesUrl;
  String? milestonesUrl;
  String? notificationsUrl;
  String? pullsUrl;
  String? releasesUrl;
  String? sshUrl;
  String? stargazersUrl;
  String? statusesUrl;
  String? subscribersUrl;
  String? subscriptionUrl;
  String? tagsUrl;
  String? teamsUrl;
  String? treesUrl;
  String? cloneUrl;
  String? mirrorUrl;
  String? hooksUrl;
  String? svnUrl;
  num? forks;
  num? openIssues;
  num? watchers;
  bool? hasIssues;
  bool? hasProjects;
  bool? hasPages;
  bool? hasWiki;
  bool? hasDownloads;
  bool? archived;
  bool? disabled;
  String? visibility;
  License? license;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['node_id'] = nodeId;
    map['name'] = name;
    map['full_name'] = fullName;
    if (owner != null) {
      map['owner'] = owner?.toJson();
    }
    map['private'] = private;
    map['html_url'] = htmlUrl;
    map['description'] = description;
    map['fork'] = fork;
    map['url'] = url;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['pushed_at'] = pushedAt;
    map['homepage'] = homepage;
    map['size'] = size;
    map['stargazers_count'] = stargazersCount;
    map['watchers_count'] = watchersCount;
    map['language'] = language;
    map['forks_count'] = forksCount;
    map['open_issues_count'] = openIssuesCount;
    map['master_branch'] = masterBranch;
    map['default_branch'] = defaultBranch;
    map['score'] = score;
    map['archive_url'] = archiveUrl;
    map['assignees_url'] = assigneesUrl;
    map['blobs_url'] = blobsUrl;
    map['branches_url'] = branchesUrl;
    map['collaborators_url'] = collaboratorsUrl;
    map['comments_url'] = commentsUrl;
    map['commits_url'] = commitsUrl;
    map['compare_url'] = compareUrl;
    map['contents_url'] = contentsUrl;
    map['contributors_url'] = contributorsUrl;
    map['deployments_url'] = deploymentsUrl;
    map['downloads_url'] = downloadsUrl;
    map['events_url'] = eventsUrl;
    map['forks_url'] = forksUrl;
    map['git_commits_url'] = gitCommitsUrl;
    map['git_refs_url'] = gitRefsUrl;
    map['git_tags_url'] = gitTagsUrl;
    map['git_url'] = gitUrl;
    map['issue_comment_url'] = issueCommentUrl;
    map['issue_events_url'] = issueEventsUrl;
    map['issues_url'] = issuesUrl;
    map['keys_url'] = keysUrl;
    map['labels_url'] = labelsUrl;
    map['languages_url'] = languagesUrl;
    map['merges_url'] = mergesUrl;
    map['milestones_url'] = milestonesUrl;
    map['notifications_url'] = notificationsUrl;
    map['pulls_url'] = pullsUrl;
    map['releases_url'] = releasesUrl;
    map['ssh_url'] = sshUrl;
    map['stargazers_url'] = stargazersUrl;
    map['statuses_url'] = statusesUrl;
    map['subscribers_url'] = subscribersUrl;
    map['subscription_url'] = subscriptionUrl;
    map['tags_url'] = tagsUrl;
    map['teams_url'] = teamsUrl;
    map['trees_url'] = treesUrl;
    map['clone_url'] = cloneUrl;
    map['mirror_url'] = mirrorUrl;
    map['hooks_url'] = hooksUrl;
    map['svn_url'] = svnUrl;
    map['forks'] = forks;
    map['open_issues'] = openIssues;
    map['watchers'] = watchers;
    map['has_issues'] = hasIssues;
    map['has_projects'] = hasProjects;
    map['has_pages'] = hasPages;
    map['has_wiki'] = hasWiki;
    map['has_downloads'] = hasDownloads;
    map['archived'] = archived;
    map['disabled'] = disabled;
    map['visibility'] = visibility;
    if (license != null) {
      map['license'] = license?.toJson();
    }
    return map;
  }
}

class License {
  License({
    this.key,
    this.name,
    this.url,
    this.spdxId,
    this.nodeId,
    this.htmlUrl,
  });

  License.fromJson(dynamic json) {
    key = json['key'];
    name = json['name'];
    url = json['url'];
    spdxId = json['spdx_id'];
    nodeId = json['node_id'];
    htmlUrl = json['html_url'];
  }

  String? key;
  String? name;
  String? url;
  String? spdxId;
  String? nodeId;
  String? htmlUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['name'] = name;
    map['url'] = url;
    map['spdx_id'] = spdxId;
    map['node_id'] = nodeId;
    map['html_url'] = htmlUrl;
    return map;
  }
}

class Owner {
  Owner({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.receivedEventsUrl,
    this.type,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.siteAdmin,
  });

  Owner.fromJson(dynamic json) {
    login = json['login'];
    id = json['id'];
    nodeId = json['node_id'];
    avatarUrl = json['avatar_url'];
    gravatarId = json['gravatar_id'];
    url = json['url'];
    receivedEventsUrl = json['received_events_url'];
    type = json['type'];
    htmlUrl = json['html_url'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    starredUrl = json['starred_url'];
    subscriptionsUrl = json['subscriptions_url'];
    organizationsUrl = json['organizations_url'];
    reposUrl = json['repos_url'];
    eventsUrl = json['events_url'];
    siteAdmin = json['site_admin'];
  }

  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? receivedEventsUrl;
  String? type;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  bool? siteAdmin;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['login'] = login;
    map['id'] = id;
    map['node_id'] = nodeId;
    map['avatar_url'] = avatarUrl;
    map['gravatar_id'] = gravatarId;
    map['url'] = url;
    map['received_events_url'] = receivedEventsUrl;
    map['type'] = type;
    map['html_url'] = htmlUrl;
    map['followers_url'] = followersUrl;
    map['following_url'] = followingUrl;
    map['gists_url'] = gistsUrl;
    map['starred_url'] = starredUrl;
    map['subscriptions_url'] = subscriptionsUrl;
    map['organizations_url'] = organizationsUrl;
    map['repos_url'] = reposUrl;
    map['events_url'] = eventsUrl;
    map['site_admin'] = siteAdmin;
    return map;
  }
}
