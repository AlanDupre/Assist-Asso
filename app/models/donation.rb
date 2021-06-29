class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :need
  validates_numericality_of :quantity, less_than_or_equal_to: Proc.new { |d| d.need.quantity }
end
