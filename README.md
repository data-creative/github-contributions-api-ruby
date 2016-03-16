# GitHub Contributions API - Ruby

A ruby interface to the [GitHub Contributions Archive](https://githubcontributions.io) API. Get information about GitHub users and events, including all repositories a user has contributed to. No authentication required.

## Installation

Add this line to your application's Gemfile before running `bundle install`:

```ruby
gem 'github_contributions_api'
```

Or install it yourself as:

    $ gem install github_contributions_api

## Usage

### GitHub User

Get GitHub user information, including all repositories contributed to.

```` sh
user = GithubContributionsApi.user("octocat")

#=> {
#  "username":"octocat",
#  "repos":[
#    "OpenELEC/OpenELEC.tv",
#    "octocat/Hello-World",
#    "octocat/Spoon-Knife",
#    "octocat/ThisIsATest",
#    "octocat/git-alliance",
#    "octocat/git-consortium",
#    "octocat/octocat.github.io"
#  ],
#  "eventCount":28
#}
````

### GitHub Events

Get events information for a given GitHub user. By default, this returns the first page of available results.

```` sh
events = GithubContributionsApi.user_events("octocat")

#=> {
#  "events":[
#    {
#      "_event_id":"3342744700",
#      "_id":"564c28d972c4347a4234f081",
#      "_repo_lower":"octocat/octocat.github.io",
#      "_user_lower":"octocat",
#      "before":"e2daa5755ee24217f39a10dc6b94988c19e0f109",
#      "commit_count":1,
#      "created_at":"2015-11-14T22:22:37+00:00",
#      "distinct_commit_count":1,
#      "head":"3a9796cf19902af0f7e677391b340f1ae4128433",
#      "ref":"refs/heads/master",
#      "repo":"octocat/octocat.github.io",
#      "type":"PushEvent",
#      "user":"octocat"
#    },
#    ...
#    {
#      "_id":"564de6ba72c4347a42a05b05",
#      "_org_lower":"",
#      "_repo_lower":"octocat/thisisatest",
#      "_user_lower":"octocat",
#      "created_at":"2012-03-12T21:14:01+00:00",
#      "org":"",
#      "repo":"octocat/ThisIsATest",
#      "type":"PublicEvent",
#      "user":"octocat"
#    }
#  ],
#  "start":0,
#  "end":28,
#  "currentPage":1,
#  "size":28
#}
````

Optionally traverse pagination for users who have more than one page of events.

```` sh
events = GithubContributionsApi.user_events("s2t2", :page => 2)
````

## Development

```` sh
git clone git@github.com:data-creative/github-contributions-api-ruby.git
cd github-contributions-api-ruby.git/
````

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/data-creative/github-contributions-api-ruby.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
