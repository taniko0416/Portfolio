# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    super
    # @user = User.new
    # @member = @user.build_member
  end

  # POST /resource
  def create
    super
    resource.build_member
    resource.member.user_id = resource.id
    resource.member.name = resource.name
    resource.member.slug = resource.slug
    resource.save
  #   @user = User.new(user_params)
  #   @user.save
  #   redirect_to '/users/edit'
  #   # redirect_to projects_path
  #   # @user_id = current_user.id
  #   # @member = Member.new(name:"aaaaaaa",slug:"edaaiaaaaaat",user_id:@user_id)
  #   # @member.save
  end

  # GET /resource/edit
  # def edit
  #   @user_id = current_user.id
  #   @member = Member.new(name:"aaaaaaaaaa",slug:"edaaiaaaaaaaaat",user_id:@user_id)
  #   @member.save
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password,:password_confirmation, members_attributes[:name, :slug]])
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [members_attributes[:name, :slug]])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
    # 'users/edit'
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
