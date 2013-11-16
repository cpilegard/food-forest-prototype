class User < ActiveRecord::Base
  has_secure_password


  has_many :resources
  has_many :plots
  belongs_to :forest


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates_presence_of :email
  validates_uniqueness_of :email
  validates_format_of :email, :with => VALID_EMAIL_REGEX
  # validates_format_of :username, :with => /\A\w+\z/, :allow_nil => true, :message => 'can only contain letters, numbers, hyphens, or underscores'
  # validates_length_of :username, :maximum => 16, :message => 'can only be 16 characters long'
  # validates_length_of :username, :minimum => 4, :message => 'has to be atleast 4 characters long'

  before_save :downcase_email
  before_create :create_remember_token

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt token
    Digest::SHA1.hexdigest(token.to_s)
  end

   def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.email = auth.info.email
      user.image = auth.info.image
      user.oauth_token = auth.credentials.token
      user.oath_expires_at = Time.at(auth.credentials.expires_at)
      user.password = user.password_confirmation = SecureRandom.urlsafe_base64
    end
  end

  private
    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end

    def downcase_email
      self.email = email.downcase
    end
end
