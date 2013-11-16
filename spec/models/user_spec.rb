require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.create(:user) }

  subject { user }

  it { should respond_to(:username) }
  it { should respond_to(:email) }
  it { should_not allow_value("foo").for(:email) }
  it { should_not allow_value("foobar").for(:email) }
  it { should allow_value("foo@bar.com").for(:email) }
  it { should_not allow_value("user with spaces").for(:username) }
  it { should_not allow_value('sho').for(:username) }
  it { should_not allow_value('s' * 17 ).for(:username) }
  it { expect(user.password.length > 6).to eq true }
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:email) }

  context 'on save' do
    it 'should encrypt the password on save' do
      expect{user.password_digest}.to_not eq 'password'
    end

    it 'should downcase the email upon save' do
      expect(user.email).to eq user.email.downcase
    end

    it 'should create a rembember to' do
      expect(user.remember_token).to_not be_nil
    end
  end
end
