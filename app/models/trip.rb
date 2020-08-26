class Trip < ApplicationRecord
  belongs_to :user
  has_many :walks, through: :trippings
  validates :user_id, presence: true
end
