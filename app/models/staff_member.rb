class StaffMember < ActiveRecord::Base
  attr_accessible :staff_id, :first_name, :surname, :email, :title

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

end
