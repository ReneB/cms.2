require 'rails_helper'

RSpec.describe "accounts/edit", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :display_name => "MyString",
      :login_code => "MyString",
      :group => "MyString"
    ))
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(@account), "post" do

      assert_select "input#account_display_name[name=?]", "account[display_name]"

      assert_select "input#account_login_code[name=?]", "account[login_code]"

      assert_select "input#account_group[name=?]", "account[group]"
    end
  end
end
