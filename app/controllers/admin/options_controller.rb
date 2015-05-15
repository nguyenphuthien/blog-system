class Admin::OptionsController < ApplicationController

  def index
    @options = Option.all
  end

  def new
    @option = Option.new
  end

  def edit
  end

  def create
  end

  def destroy
  end

  private

  def option_params
    params.require(:option).permit(:body, :answer, :question)
  end
end