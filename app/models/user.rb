class User < ApplicationRecord
  validates :name, presence: true, uniqueness: { message: 'Name already taken!' }, length: { in: (3..20) }
  has_many :posts
  has_many :comments
end
