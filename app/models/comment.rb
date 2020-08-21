class Comment < ApplicationRecord
  belongs_to :walk
  belongs_to :user
end
