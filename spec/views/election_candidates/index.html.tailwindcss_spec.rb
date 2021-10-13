require 'rails_helper'

RSpec.describe "election_candidates/index", type: :view do
  before(:each) do
    assign(:election_candidates, [
      ElectionCandidate.create!(),
      ElectionCandidate.create!()
    ])
  end

  it "renders a list of election_candidates" do
    render
  end
end
