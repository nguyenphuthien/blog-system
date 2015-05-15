class Question < ActiveRecord::Base
  belongs_to :category
  has_many :options, :dependent => :destroy
  accepts_nested_attributes_for :options
end
