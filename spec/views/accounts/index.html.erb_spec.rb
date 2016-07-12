require 'rails_helper'

RSpec.describe "accounts/index", type: :view do
  before(:each) do
    assign(:accounts, [
      Account.create!(
        :display_name => "Display Name",
        :login_code => "Login Code",
        :group => "Group"
      ),
      Account.create!(
        :display_name => "Display Name",
        :login_code => "Login Code",
        :group => "Group"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    assert_select "tr>td", :text => "Display Name".to_s, :count => 2
    assert_select "tr>td", :text => "Login Code".to_s, :count => 2
    assert_select "tr>td", :text => "Group".to_s, :count => 2
  end
end
