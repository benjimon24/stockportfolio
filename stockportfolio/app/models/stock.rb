class Stock < ApplicationRecord
  belongs_to :portfolio
  validates_presence_of :name, :cost_basis, :volume, :symbol
  
end
