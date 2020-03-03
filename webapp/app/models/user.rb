class User < ApplicationRecord
  has_one :member
  accepts_nested_attributes_for :member

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :timeoutable, :lockable, :trackable

  # belongs_to :role, polymorphic: true, dependent: :destroy, optional: true

  validates :email, uniqueness: true
  before_create :set_default_role_type

  def set_default_info
    @member = Member.last
    member = Member.last
    update = @member.update(intro: "【準備中】自己紹介文を記入する場所です")
    post = Post.create(member_id: member.id, content: "ポートフォリオです")
    post = Post.create(member_id: member.id, content: "登録有難うございます")
  end

  private
  def set_default_role_type
    self.role_type =  "Member"
    self.role_id =  1
  end

end
