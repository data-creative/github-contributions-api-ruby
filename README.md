# Github Contributions API - Ruby

A ruby interface to the [GitHub Contributions Archive](https://githubcontributions.io) API. Get information about GitHub users and events, including all repositories a user has contributed to. No authentication required.

## Installation

Add this line to your application's Gemfile before running `bundle install`:

```ruby
gem 'github_contributions_api'
```

Or install it yourself as:

    $ gem install github_contributions_api

## Usage

### Github User

Get Github User information, including all repositories contributed to.

```` sh
user = GithubContributionsApi.user("octocat")
````

### Github Events

Get Events information for a given Github User. By default, this returns the first page of available results.

```` sh
events = GithubContributionsApi.user_events("octocat")
````

Optionally specify the page number for users who have more than one page of events.

```` sh
events = GithubContributionsApi.user_events("s2t2", :page => 2)
````

## Development

```` sh
git clone _________
cd ____/
````

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/data-creative/github-contributions-api-ruby.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
