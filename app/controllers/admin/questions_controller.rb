class Admin::QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def edit
  end

  def create
    @question = Question.new(question_params)
    @question.save
  end

  def destroy
  end

  private

  def question_params
    params.require(:question).permit(:q_name, :category)
  end
end