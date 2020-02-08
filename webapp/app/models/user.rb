class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :timeoutable, :lockable, :trackable

  belongs_to :role, polymorphic: true, dependent: :destroy
end
