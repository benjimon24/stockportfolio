class User < ApplicationRecord
  has_many :portfolios

  validates_presence_of :first_name, :last_name, :password, :email
end
