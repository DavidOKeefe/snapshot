require 'rails_helper'

RSpec.describe ImportCSVEntries do
  let(:import_entry) { fixture_file_upload("files/import_entry_abc_fixture.csv", "text/csv")}
  let(:account_id) { "1" }

  let(:importer) do
    described_class.new(
      account_id: account_id,
      import_entry: import_entry
    )
  end

  describe '#import' do
    context 'with valid params' do
      it 'creates an Entry for each csv import entry row' do
        expect{ importer.import }.to change{ Entry.all.size }.by(2)
      end
    end
  end
end
