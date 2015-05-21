class Admin::CategoriesController < ApplicationController
  before_action :set_category, only:[:questions]

  def index
  end

  def new
    @question = Question.new
  end

  def edit
  end

  def create
    @question = Question.new question_params
    if @question.save
      redirect_to admin_categories_path
    end
  end

  def destroy
  end

  private
  def set_question
    @question = Question.find params[:id]
  end

  def question_params
    params.require(:question).permit(:category, :q_name,:options_attributes => [:body, :answer]])
  end


end