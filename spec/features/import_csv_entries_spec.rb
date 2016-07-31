require 'rails_helper'

feature "Importing CSV Entries" do
  before do
    FactoryGirl.create(:account)
  end

  scenario "successfully" do
    visit entries_path

  end
end
