class User < ActiveRecord::Base
 has_many :entry
 has_many :comment
end
