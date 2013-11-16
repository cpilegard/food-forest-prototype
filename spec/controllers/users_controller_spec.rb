require 'spec_helper'

describe UsersController do
  it '#new should render new template' do
    get :new
    response.should render_template('new')
  end

  it '#create should redirect to root_path if save is successful' do
    post :create, :user => { :username => 'Nick', :email => 'nick@nick.com', :password => 'password', :password_confirmation => 'password'}
    expect(response.status).to eq 302
  end

  it '#create should render new template if save is unsuccessful' do
    post :create, :user => { :username => 'Nick', :email => 'nick@nick.com', :password => 'password', :password_confirmation => 'wrong_pass'}
    response.should render_template('new')
  end
end
