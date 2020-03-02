class Member < ApplicationRecord
  # has_one :user, as: :role, dependent: :destroy
  belongs_to :user
  has_many :posts, dependent: :destroy

  validates :name, uniqueness: true
  validates :slug, uniqueness: true
end
