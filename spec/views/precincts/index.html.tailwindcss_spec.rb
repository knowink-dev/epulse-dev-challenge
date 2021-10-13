require 'rails_helper'

RSpec.describe "precincts/index", type: :view do
  before(:each) do
    assign(:precincts, [
      Precinct.create!(),
      Precinct.create!()
    ])
  end

  it "renders a list of precincts" do
    render
  end
end
