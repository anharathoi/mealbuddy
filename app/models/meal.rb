class Meal < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  def integer_to_price
    self.price * 100.0  
  end 
end
