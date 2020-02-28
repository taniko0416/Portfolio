class Member::HomeController < Member::Base
  before_action :authenticate_user!
  def show
    @member = Member.find_by(user_id: current_user.id)
  end
end
