class Admin::CategoriesController < ApplicationController
  before_action :set_category, only:[:edit]

  def index
    @categories = Category.all

  end

  def new
    @category = Category.new
    5.times do
      question = @category.questions.build
      4.times { question.options.build }
    end
  end

  def edit
  end

  def create
    @category = Category.new category_params

    if @category.save
      redirect_to admin_categories_path
    end

  end

  def destroy
  end

  private
  def set_category
    @category = Category.find params[:id]
  end

  def category_params
    params.require(:category).permit(:c_name,
                                      questions_attributes: [:q_name,
                                                             :options_attributes => [:body, :answer]])
  end


end