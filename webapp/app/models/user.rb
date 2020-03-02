class User < ApplicationRecord
  has_one :member
  accepts_nested_attributes_for :member

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :timeoutable, :lockable, :trackable

  # belongs_to :role, polymorphic: true, dependent: :destroy, optional: true

  
  before_create :set_default_role_type
  
  private
  def set_default_role_type
    self.role_type =  "Member"
    self.role_id =  1
  end

end
