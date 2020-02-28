class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception
  # ログイン後のリダイレクト先
  def after_sign_in_path_for(resource_or_scope)
    # if resource_or_scope.is_a?(AdminUser)
    #   admin_root_path
    # else
      root_path
    # end
  end

  # ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource_or_scope)
    # if resource_or_scope == :admin_admin_user
    #   new_admin_admin_user_session_path
    # else
      '/users/sign_in'
    # end
  end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [member_attributes: [:name, :slug]])
    end

end
