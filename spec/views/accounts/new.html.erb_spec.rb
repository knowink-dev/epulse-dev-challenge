require 'rails_helper'

RSpec.describe "accounts/new", type: :view do
  before(:each) do
    assign(:account, Account.new(
      county: "MyString",
      state: "MyString",
      display_name: "MyString"
    ))
  end

  it "renders new account form" do
    render

    assert_select "form[action=?][method=?]", accounts_path, "post" do

      assert_select "input[name=?]", "account[county]"

      assert_select "input[name=?]", "account[state]"

      assert_select "input[name=?]", "account[display_name]"
    end
  end
end
