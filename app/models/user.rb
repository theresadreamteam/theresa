class User < ApplicationRecord
  acts_as_voter
  has_many :comments
  has_many :posts
  has_secure_password
  validates_presence_of :username
  validates_presence_of :password
end
