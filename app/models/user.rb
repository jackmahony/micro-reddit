class User < ApplicationRecord
  validates :firstname, presence: :true
  validates :lastname, presence: :true
  validates :email, presence: :true
  validates :email, presence: :true

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
