class Event < ApplicationRecord
  has_many :needs, dependent: :destroy
  has_many :donations, through: :needs
end
