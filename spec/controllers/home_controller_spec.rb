require 'spec_helper'

describe HomeController do
  it '#index should render index template' do
    get :index
    response.should render_template('index')
  end
end


