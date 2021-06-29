class Need < ApplicationRecord
  NEEDCATEGORIES = ["Food", "People", "Money", "Furnitures"]
  validates :category, inclusion: { in: NEEDCATEGORIES }

  belongs_to :event
  has_many :donations, dependent: :destroy
end
