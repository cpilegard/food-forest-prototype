class OauthController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    if user.save
      sign_in user
      flash[:success] = "Successfully logged in with Facebook"
      redirect_to root_path
    else
      fail
    end
  end

  def fail
    flash[:error] = "There was an error. Please try again."
    redirect_to root_url
  end
end
