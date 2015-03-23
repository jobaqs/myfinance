class JournalsController < ApplicationController
  layout 'home'
  before_action :authenticate_user!
  before_action :set_journal, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @journals = Journal.all
    respond_with(@journals)
  end

  def show
    respond_with(@journal)
  end

  def new
    @journal = Journal.new
    respond_with(@journal)
  end

  def edit
  end

  def create
    @journal = Journal.new(journal_params)
    @journal.save
    respond_with(@journal)
  end

  def update
    @journal.update(journal_params)
    respond_with(@journal)
  end

  def destroy
    @journal.destroy
    respond_with(@journal)
  end

  private
    def set_journal
      @journal = Journal.find(params[:id])
    end

    def journal_params
      params.require(:journal).permit(:date_of_journal, :payee, :description, :account_id, :amount, :user_id, :is_posted)
    end
end
