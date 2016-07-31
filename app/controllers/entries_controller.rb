class EntriesController < ApplicationController
  before_action :set_entry, only: [:edit, :update, :destroy]

  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def edit
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to entries_path, notice: 'Entry was successfully created.'
    else
      render :new
    end
  end

  def update
    if @entry.update(entry_params)
      redirect_to entries_path, notice: 'Entry was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @entry.destroy
    redirect_to entries_path, notice: 'Entry was successfully destroyed.'
  end

  def import
    Entry.import(file: params[:file], account_id: params['account']['id'].to_i)
    redirect_to entries_path, notice: "Transactions Imported."
  end

  private
    def set_entry
      @entry = Entry.find(params[:id])
    end

    def entry_params
      params.require(:entry).permit(:name, :amount, :account_id, :category_id, :transaction_type_id)
    end
end
