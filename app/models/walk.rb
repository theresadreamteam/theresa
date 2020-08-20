class Walk < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_one_attached :photo
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :coordinates_start

end
