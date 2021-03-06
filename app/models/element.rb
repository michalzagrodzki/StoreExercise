class Element < ActiveRecord::Base
  belongs_to :category

  validates :name, presence: true, uniqueness: true
end
