module CapybaraHelpers
  def login user
  end

  def logged_in user
    ApplicationController.any_instance.stub(:current_user) { user }
  end
end
