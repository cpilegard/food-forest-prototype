require 'spec_helper'

describe SessionsController do
  before(:each) do
    FactoryGirl.create(:user, email: 'nick@nick.com')
  end

  it '#new should render new template' do
    get :new
    response.should render_template('new')
  end

  it '#create should redirect if login was successful' do
    post :create, :session => { email: 'nick@nick.com', password: 'password' }
    expect(response.status).to eq 302
  end

  it '#create should render new if login was unsuccessful' do
    post :create, :session => { email: 'nick@nick.com', password: 'wrong_password' }
    response.should render_template('new')
  end

  it '#destroy should sign out a user' do
    post :create, :session => { email: 'nick@nick.com', password: 'password' }
    delete :destroy
    controller.current_user.should be_nil
  end

  it '#destroy should redirect' do
    post :create, :session => { email: 'nick@nick.com', password: 'password' }
    delete :destroy
    expect(response.status).to eq 302
  end
end
