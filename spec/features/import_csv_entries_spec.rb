require 'rails_helper'

feature "Importing CSV Entries" do
  let!(:account) { FactoryGirl.create(:account) }

  scenario "successfully" do
    visit entries_path
    select(account.name, from: 'account_id')
    page.attach_file('file', 'spec/fixtures/import_entry_abc_fixture.csv')
    click_button('Import')
    expect(page).to have_content(I18n.t('import_entries.create.success'))
  end
end
