require 'rails_helper'

RSpec.describe "election_candidates/show", type: :view do
  before(:each) do
    @election_candidate = assign(:election_candidate, ElectionCandidate.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
