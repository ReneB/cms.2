require 'rails_helper'

RSpec.describe "accounts/new", type: :view do
  before(:each) do
    assign(:account, Account.new(
      :display_name => "MyString",
      :login_code => "MyString",
      :group => "MyString"
    ))
  end

  it "renders new account form" do
    render

    assert_select "form[action=?][method=?]", accounts_path, "post" do

      assert_select "input#account_display_name[name=?]", "account[display_name]"

      assert_select "input#account_login_code[name=?]", "account[login_code]"

      assert_select "input#account_group[name=?]", "account[group]"
    end
  end
end
