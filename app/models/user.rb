class User < ApplicationRecord
  has_secure_password

  has_many :portfolios, dependent: :destroy
  has_many :stocks, through: :portfolios, dependent: :destroy
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
  validates :password, length: {minimum: 6}
end
