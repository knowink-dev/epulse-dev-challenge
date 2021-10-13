require 'rails_helper'

RSpec.describe "precincts/edit", type: :view do
  before(:each) do
    @precinct = assign(:precinct, Precinct.create!())
  end

  it "renders the edit precinct form" do
    render

    assert_select "form[action=?][method=?]", precinct_path(@precinct), "post" do
    end
  end
end
