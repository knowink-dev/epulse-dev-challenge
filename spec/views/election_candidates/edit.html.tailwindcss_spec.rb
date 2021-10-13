require 'rails_helper'

RSpec.describe "election_candidates/edit", type: :view do
  before(:each) do
    @election_candidate = assign(:election_candidate, ElectionCandidate.create!())
  end

  it "renders the edit election_candidate form" do
    render

    assert_select "form[action=?][method=?]", election_candidate_path(@election_candidate), "post" do
    end
  end
end
