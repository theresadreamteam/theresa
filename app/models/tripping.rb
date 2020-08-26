class Tripping < ApplicationRecord
  belongs_to :walk
  belongs_to :trip
end
