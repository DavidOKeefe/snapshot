require 'rails_helper'

RSpec.describe ImportEntryController, type: :controller do
  let(:valid_attributes) { FactoryGirl.attributes_for(:entry) }
  let(:valid_session) { {} }

  describe 'POST #create' do
    context 'with valid params' do
      it "creates a new Entry" do
        expect {
          post :create, {:import_entry => valid_attributes}, valid_session
        }.to change(Entry, :count).by(1)
      end
    end
  end
end
