class Event < ApplicationRecord
  has_many :needs, dependent: :destroy
  has_many :donations, through: :needs
  has_many :whishlist_events, dependent: :destroy
end
