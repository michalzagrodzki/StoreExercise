class Category < ActiveRecord::Base
  has_many :elements
end
