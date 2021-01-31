class User < ApplicationRecord

  has_many :rooms, dependent: :destroy
  has_many :reservations, dependent: :destroy

  validates :name, presence: true, length: {maximum: 30}
  validates :email, presence: true, uniqueness: true
  
  has_secure_password
  validates :password, presence: true, length: {minimum: 8}

end
