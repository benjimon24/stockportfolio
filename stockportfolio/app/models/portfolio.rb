class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :stocks

  validates_presence_of :name
  validates_uniqueness_of :name, scope: :user_id, message: "Portfolio with the name already exists!"
end
