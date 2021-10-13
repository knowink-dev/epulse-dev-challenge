require 'rails_helper'

RSpec.describe "elections/edit", type: :view do
  before(:each) do
    @election = assign(:election, Election.create!())
  end

  it "renders the edit election form" do
    render

    assert_select "form[action=?][method=?]", election_path(@election), "post" do
    end
  end
end
