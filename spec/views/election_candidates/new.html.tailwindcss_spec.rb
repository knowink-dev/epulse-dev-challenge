require 'rails_helper'

RSpec.describe "election_candidates/new", type: :view do
  before(:each) do
    assign(:election_candidate, ElectionCandidate.new())
  end

  it "renders new election_candidate form" do
    render

    assert_select "form[action=?][method=?]", election_candidates_path, "post" do
    end
  end
end
