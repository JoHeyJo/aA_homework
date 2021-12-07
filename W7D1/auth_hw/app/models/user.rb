class User < ApplicationRecord
  validates :username, :session_token, presence: true
  validates :password_digest, presence: { message: "Password can't be blank" }
  validates :password, length: { minimum: 6 }, allow_nul: true
  validates :session_token, presence: true
  before_validation :ensure_session_token

  def self.find_by_credentials(username, password)
    user = User.find_by(User :username)
    if user && user.ispassword?(password)
    else
      nil
    end
  end

  def self.generate_session_token
    session_token = SecureRandom::urlsafe_base64
  end

  def reset_session_token!
    self.session_toekn = SecureRandom::urlsafe_base64
    self.save
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64
  end

  def method_name
    
  end
end


