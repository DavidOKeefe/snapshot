require 'rails_helper'

RSpec.describe "transactions/index", type: :view do
  before(:each) do
    assign(:transactions, [
      FactoryGirl.create(:transaction),
      FactoryGirl.create(:transaction)
    ])
    assign(:import_entry, [
      ImportCSVEntries.new
    ])
  end

  it "renders a list of entries" do
    render
  end
end
