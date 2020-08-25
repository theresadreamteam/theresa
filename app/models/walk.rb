class Walk < ApplicationRecord
  include Rails.application.routes.url_helpers
  acts_as_votable
  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  validates :title, presence: true,
                    length: { minimum: 5 }
  has_one_attached :photo
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :coordinates_start
  validates_presence_of :user_id

  def tag_list
    self.tags.collect do |tag|
      tag.name
    end.join(", ")
  end

  def tag_list=(tags_string)
    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
    self.tags = new_or_found_tags
  end

end
