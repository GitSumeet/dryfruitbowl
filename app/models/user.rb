require 'digest/sha2'

class User < ActiveRecord::Base
  attr_accessible :dob, :email, :firstname, :height, :id, :lastname, :passwordhash, :picture, :weight, :salt, :role, :password, :password_confirmation
  
  # make sure we have a unique email for each user
  validates :email, :presence => true, :uniqueness => true
  
  # confirm both passwords match
  validates :password, :confirmation => true
  
  attr_accessor :password_confirmation
  attr_reader :password
  
  validate :password_must_be_present
  
  def User.encrypt_password(password, salt)
    Digest::SHA2.hexdigest(password + salt)
  end
    
  # Encrypt and save password hash and salt when clear text password is set
  def password=(password)
    @password = password
    
    if password.present?
      generate_salt
      self.passwordhash = self.class.encrypt_password(password, salt)
    end  
  end
  
  def User.authenticate(email, password)
    if user = find_by_email(email)
      if user.passwordhash == encrypt_password(password, user.salt)
        user
      end
    end  
  end

private

  def generate_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
  
  def password_must_be_present
    errors.add(:password, "Password is missing") unless passwordhash.present?  
  end
  
end
