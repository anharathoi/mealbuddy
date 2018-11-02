class Meal < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :nullify 
  has_one_attached :image
end
