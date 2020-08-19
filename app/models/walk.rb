class Walk < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_one_attached :photo

end
