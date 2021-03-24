require 'rails_helper'

RSpec.describe "accounts/edit", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      county: "MyString",
      state: "MyString",
      display_name: "MyString"
    ))
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(@account), "post" do

      assert_select "input[name=?]", "account[county]"

      assert_select "input[name=?]", "account[state]"

      assert_select "input[name=?]", "account[display_name]"
    end
  end
end
