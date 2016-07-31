require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) { @account = assign(:account, FactoryGirl.create(:account)) }

  it "renders attributes in <p>" do
    render
  end
end
