class Walk < ApplicationRecord
  include Rails.application.routes.url_helpers
  belongs_to :user, optional: true
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
  has_one_attached :photo
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :coordinates_start
  validates_presence_of :user_id

  def self.tagged_with(name)
    Tag.find_by!(name: name).walks
  end

  def self.tag_counts
    Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id')
  end

  def tag_list
    tags.map(&:name).join(', ')
  end

  def tag_list=(names)
    self.tags = names.split(',').map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end

end
