require "github_contributions_api/version"
require 'json'
require "httparty"

module GithubContributionsApi
  URL_BASE = "https://githubcontributions.io/api"

  # Get information about a given github user.
  # @param [String] github_username The username of the github user.
  # @example GithubContributionsApi.user("octocat")
  # @return [Hash]
  def self.user(github_username)
    request_url = "#{URL_BASE}/user/#{github_username}"
    response = HTTParty.get(request_url)
    JSON.parse(response.body)
  end

  # Get events for a given github user.
  # @param [String] github_username The username of the github user.
  # @param [Hash] options
  # @option options [Integer] :page (1) The requested page number.
  # @example GithubContributionsApi.user_events("octocat")
  # @example GithubContributionsApi.user_events("octocat", :page => 1)
  # @example GithubContributionsApi.user_events("s2t2", :page => 2)
  # @return [Hash]
  def self.user_events(github_username, options = {})
    page_number = options[:page] || 1
    request_url = "#{URL_BASE}/user/#{github_username}/events/#{page_number}"
    response = HTTParty.get(request_url)
    JSON.parse(response.body)
  end
end
