class Member::HomeController < Member::Base
  before_action :authenticate_user!
  def show
  end
end
