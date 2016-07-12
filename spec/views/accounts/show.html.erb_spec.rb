require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :display_name => "Display Name",
      :login_code => "Login Code",
      :group => "Group"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Display Name/)
    expect(rendered).to match(/Login Code/)
    expect(rendered).to match(/Group/)
  end
end
