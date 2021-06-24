class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :whishlist_events, dependent: :destroy
  has_many :events, through: :whishlist_events, dependent: :destroy
  has_many :donations, dependent: :destroy
end
