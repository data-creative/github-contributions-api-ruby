# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'github_contributions_api/version'

Gem::Specification.new do |spec|
  spec.name          = "github_contributions_api"
  spec.version       = GithubContributionsApi::VERSION
  spec.authors       = ["MJ Rossetti"]
  spec.email         = ["datacreativellc@gmail.com"]

  spec.summary       = %q{A ruby interface to the GitHub Contributions Archive API (https://githubcontributions.io). Get information about GitHub users and events, including all repositories a user has contributed to. No authentication required.}
  spec.description   = %q{A ruby interface to the GitHub Contributions Archive API (https://githubcontributions.io). Get information about GitHub users and events, including all repositories a user has contributed to. No authentication required.}
  spec.homepage      = "https://github.com/data-creative/github-contributions-api-ruby"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "redcarpet"
  spec.add_development_dependency "github-markup"
  spec.add_dependency "httparty", "~> 0.13"
end
