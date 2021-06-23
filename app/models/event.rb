class Event < ApplicationRecord
  has_many :needs
  belongs_to :user
end
