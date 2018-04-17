require 'rails_helper'

RSpec.describe ImportEntriesController, type: :controller do
  let(:import_entry) { fixture_file_upload("files/import_entry_abc_fixture.csv", "text/csv")}
  let(:valid_session) { {} }

  describe 'POST #create' do
    context 'with valid params' do
      it "redirects to the entries index" do
        post :create,
          { file: import_entry, account_id: "100" },
          valid_session

        expect(response).to redirect_to(entries_path)
      end
    end
  end
end
