require 'rails_helper'

RSpec.describe "precincts/new", type: :view do
  before(:each) do
    assign(:precinct, Precinct.new())
  end

  it "renders new precinct form" do
    render

    assert_select "form[action=?][method=?]", precincts_path, "post" do
    end
  end
end
