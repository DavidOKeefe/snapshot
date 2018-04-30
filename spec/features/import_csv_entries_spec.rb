require 'rails_helper'

feature "Importing CSV Entries" do
  let!(:account) { FactoryGirl.create(:account) }

  scenario "successfully" do
    visit new_import_entry_path
    select(account.name, from: 'import_csv_entries_account_id')
    page.attach_file('import_csv_entries_file', Rails.root + 'spec/fixtures/files/import_entry_abc_fixture.csv')
    click_button('Import')
    expect(page).to have_content(I18n.t('import_entries.create.success'))
  end
end
