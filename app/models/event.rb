class Event < ApplicationRecord
  has_many :needs, dependent: :destroy
  has_many :donations, through: :needs
  has_many :whishlist_events, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
