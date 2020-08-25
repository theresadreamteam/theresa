class Trip < ApplicationRecord
  belongs_to :user
  has_many :walks
  validates :user_id, presence: true
end
