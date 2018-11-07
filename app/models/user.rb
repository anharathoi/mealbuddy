class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :meals
  has_many :orders, dependent: :nullify

  geocoded_by :address
  after_validation :geocode
  def address
    [street, city, state, country].compact.join(', ') 
  end
end
