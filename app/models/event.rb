class Event < ApplicationRecord
  has_many :needs
  has_many :donations, through: :needs
end
