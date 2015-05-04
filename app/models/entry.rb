class Entry < ActiveRecord::Base
  has_many :comment
  belongs_to :user
end
