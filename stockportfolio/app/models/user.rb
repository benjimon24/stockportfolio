class User < ApplicationRecord
  has_secure_password
  
  has_many :portfolios
  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email
  validates  :password, length: {minimum: 6}

end
