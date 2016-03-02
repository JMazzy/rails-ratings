class SessionsController < ApplicationController
  include SessionsHelper

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    log_in(user)
    redirect_to root_path
  end

  def destroy
    log_out
  end

  private

  def session_params
    params.require(:session).allow(:user_id, :password, :password_confirmation)
  end
end
