require 'spec_helper'

describe GithubContributionsApi do
  it 'has a version number' do
    expect(GithubContributionsApi::VERSION).not_to be nil
  end

  describe '#user' do
    context "when the user exists" do
      let(:user){ GithubContributionsApi.user("octocat") }

      it 'gets information about the given user' do
        expect(user["username"]).to eql("octocat")
      end

      it 'gets a list of repositories to which the user has contributed' do
        expect(user["repos"]).to_not be_empty
      end

      it 'gets a count of events for the given user' do
        expect(user["eventCount"]).to be > 0
      end
    end
  end

  describe '#user_events' do
    context "when the user exists" do
      it 'gets a list of events for the given user' do
        events = GithubContributionsApi.user_events("octocat")
        expect(events["events"]).to_not be_empty
      end

      it 'suppots pagination options' do
        events = GithubContributionsApi.user_events("s2t2", :page => 2)
        expect(events["currentPage"]).to eql(2)
      end
    end
  end
end
