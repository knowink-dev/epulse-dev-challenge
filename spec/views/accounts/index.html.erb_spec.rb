require 'rails_helper'

RSpec.describe "accounts/index", type: :view do
  before(:each) do
    assign(:accounts, [
      Account.create!(
        county: "St. Louis",
        state: "MO",
        display_name: "St. Louis1"
      ),
      Account.create!(
        county: "St. Louis",
        state: "MO",
        display_name: "St. Louis2"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    assert_select "tr>td", text: "St. Louis".to_s, count: 2
    assert_select "tr>td", text: "MO".to_s, count: 2
    assert_select "tr>td", text: "St. Louis1".to_s, count: 1
    assert_select "tr>td", text: "St. Louis2".to_s, count: 1
  end
end
