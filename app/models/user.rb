class User < ApplicationRecord
  has_many :comments
  has_many :posts
  has_secure_password
  validates_presence_of :username
  validates_presence_of :password
end
