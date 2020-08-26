class Trip < ApplicationRecord
  belongs_to :user
  has_many :trippings
  has_many :walk, :through => :trippings
  validates :user_id, presence: true
end
