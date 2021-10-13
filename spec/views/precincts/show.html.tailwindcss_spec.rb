require 'rails_helper'

RSpec.describe "precincts/show", type: :view do
  before(:each) do
    @precinct = assign(:precinct, Precinct.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
