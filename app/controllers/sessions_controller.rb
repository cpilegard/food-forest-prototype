class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(user_email)
    if user && user.authenticate(user_password)
      sign_in user
      flash[:notice] = "Successfully logged in"
      redirect_to root_url
    else
      @errors = ["Invalid email/password combination."]
      render :new
    end
  end

  def destroy
    sign_out
    flash[:notice] = "You Hae successfully Logged Out"
    redirect_to root_url
  end

  private
    def user_email
      params[:session][:email].downcase
    end

    def user_password
      params[:session][:password]
    end
end
