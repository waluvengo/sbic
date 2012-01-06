class StaffMember < ActiveRecord::Base

  attr_accessor :password  
  attr_accessible :staff_id, :first_name, :surname, :email, :title, :password, :password_confirmation

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :staff_id,  :presence => true,
                    :length   => { :maximum => 10 }  

  validates :first_name,  :presence => true,
                    :length   => { :maximum => 50 }

  validates :surname,  :presence => true,
                    :length   => { :maximum => 50 }


  validates :email, :presence   => true,
                    :format     => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }

  validates :title,  :presence => true,
                    :length   => { :maximum => 30 }

  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 6..40 }

  before_save :encrypt_password

  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end

  def self.authenticate(email, submitted_password)
    staff_member = find_by_email(email)
    return nil  if staff_member.nil?
    return staff_member if staff_member.has_password?(submitted_password)
  end

  private

    def encrypt_password
      self.salt = make_salt unless has_password?(password)
      self.encrypted_password = encrypt(password)
    end

    def encrypt(string)
      secure_hash("#{salt}--#{string}")
    end

    def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end

    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end
end
