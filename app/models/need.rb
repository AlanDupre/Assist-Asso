class Need < ApplicationRecord
  belongs_to :event
  has_many :donations, dependent: :destroy
end
