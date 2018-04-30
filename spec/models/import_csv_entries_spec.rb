require 'rails_helper'

RSpec.describe ImportCSVEntries do
  let(:file) { fixture_file_upload("files/import_entry_abc_fixture.csv", "text/csv")}
  let(:account_id) { "1" }

  let(:importer) do
    described_class.new(
      account_id: account_id,
      file: file
    )
  end

  describe '#import' do
    context 'with valid params' do
      it 'creates a transaction for each csv import row' do
        expect{ importer.import }.to change{ Transaction.all.size }.by(2)
      end
    end
  end
end
