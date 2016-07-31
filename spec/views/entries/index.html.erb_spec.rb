require 'rails_helper'

RSpec.describe "entries/index", type: :view do
  before(:each) do
    assign(:entries, [
      FactoryGirl.create(:entry),
      FactoryGirl.create(:entry)
    ])
  end

  it "renders a list of entries" do
    render
  end
end