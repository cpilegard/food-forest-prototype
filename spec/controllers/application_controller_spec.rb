require 'spec_helper'

describe ApplicationController do
  let(:user) { FactoryGirl.create(:user) }

  it '#current_user should return current user' do
    controller.sign_in(user)
    controller.current_user.should be_an_instance_of(User)
  end

  it '#signed_in? should return true if user is signed in' do
    controller.signed_in?.should be_false
  end

  it '#signed_in? should return true if user is signed in' do
    controller.sign_in(user)
    controller.signed_in?.should be_true
  end

  it '#sign_out should sign out user' do
    controller.sign_in(user)
    controller.sign_out
    controller.current_user.should be_nil
  end
end
