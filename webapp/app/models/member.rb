class Member < ApplicationRecord
  # has_one :user, as: :role, dependent: :destroy
  belongs_to :user

  has_many :posts, dependent: :destroy
  

  # before_create :set_default_role_type
  
  # private
  # def set_default_role_type
  #   self.name =  "Memberaaaaa"
  #   self.slug =  "slugaaaaa"
  # end
end
