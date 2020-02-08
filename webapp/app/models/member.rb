class Member < ApplicationRecord
  has_one :user, as: :role, dependent: :destroy
  has_many :posts, dependent: :destroy
end
