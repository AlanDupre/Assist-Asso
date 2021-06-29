class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :need
  validates_numericality_of :quantity, less_than: 5, message: "error"
end
