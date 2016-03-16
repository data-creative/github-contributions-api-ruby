require "github_contributions_api/version"
require 'json'

module GithubContributionsApi

  # Get information about a given github user.
  #
  # @param [String] github_username The username of the github user.
  #
  # @example GithubContributionsApi.user("octocat")
  def self.user(github_username)
    user = {
      "username":"octocat",
      "repos":[
        "OpenELEC/OpenELEC.tv",
        "octocat/Hello-World",
        "octocat/Spoon-Knife",
        "octocat/ThisIsATest",
        "octocat/git-alliance",
        "octocat/git-consortium",
        "octocat/octocat.github.io"
      ],
      "eventCount":28
    }
    JSON.parse(user.to_json)
  end

  # Get events for a given github user.
  #
  # @param [String] github_username The username of the github user.
  # @param [Hash] options
  # @param [Hash] options [Integer] :page The requested page number.
  #
  # @example GithubContributionsApi.user("octocat")
  # @example GithubContributionsApi.user("octocat", :page => 1)
  # @example GithubContributionsApi.user("s2t2", :page => 2)
  def self.user_events(github_username, options = {})
    events = {
      "events":[
        {
          "_event_id":"3725650876",
          "_id":"56da690872c43443fb259dd0",
          "_org_lower":"slco-2016",
          "_repo_lower":"slco-2016/slco-court-calendar-service",
          "_user_lower":"s2t2",
          "before":"cf6b4ec3db576b67a9781bb5d349bafeb749919f",
          "commit_count":1,
          "created_at":"2016-03-05T03:57:32+00:00",
          "distinct_commit_count":1,
          "head":"ad0c595b458a7e05514c3697cc8a8a4c12f36eab",
          "org":"slco-2016",
          "ref":"refs/heads/master",
          "repo":"slco-2016/slco-court-calendar-service",
          "type":"PushEvent",
          "user":"s2t2"
        },
        {
          "_event_id":"3682124292",
          "_id":"56d128be72c43469346bf401",
          "_org_lower":"opensaltlake",
          "_repo_lower":"opensaltlake/utah-court-calendar-service",
          "_user_lower":"s2t2",
          "action":"opened",
          "created_at":"2016-02-24T08:12:19+00:00",
          "html_url":"https://github.com/OpenSaltLake/utah-court-calendar-service/issues/8",
          "issue_number":8,
          "org":"OpenSaltLake",
          "repo":"OpenSaltLake/utah-court-calendar-service",
          "type":"IssuesEvent",
          "user":"s2t2"
        }
      ],
      "start":50,
      "end":100,
      "currentPage":2,
      "size":50
    }
    JSON.parse(events.to_json)
  end
end
