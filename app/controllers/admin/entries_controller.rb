class  Admin::EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]

  def index
    @entries = Entry.all
  end

  def edit
    @entry = Entry.find params[:id]
  end

  def update
    respond_to do |format|
      if @entry.update entry_params
        format.html { redirect_to admin_entries_path }
        format.js
      end
    end
  end

  def destroy
    @entry.destroy
    respond_to do |format|
      format.html {redirect_to admin_entries_path }
      format.js
    end
  end

  private
    def set_entry
      @entry = Entry.find(params[:id])
    end

    def entry_params
      params.require(:entry).permit(:title, :body, :user_id)
    end
end